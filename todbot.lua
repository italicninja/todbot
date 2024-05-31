---@diagnostic disable: undefined-field

require('common')
local settings = require('settings')
local chat = require('chat')

local nm_list = require('nm_list')
local horizon_nm_list = require('horizon_nm_list')
local gui = require("gui")
require("discord")

addon.name = 'todbot'
addon.author = 'gnubeardo || itallicninja'
addon.version = '1.5'
addon.desc = 'posts TOD of NMs to a Discord webhook'
addon.link = 'https://github.com/ErikDahlinghaus/todbot'

local default_settings = T{
    webhookURL = "",
    avatarURL = "",
    debug = false,
    autoPost = false,
    realList = nm_list
}

local todbot = T{
    settings = settings.load(default_settings),
    recent_monsters = T{}
}

settings.register('settings', 'settings_update', function (s)
    if (s ~= nil) then
        todbot.settings = s
    end
    settings.save()
end)

register_gui(todbot)


--[[
    Ripped from https://github.com/AshitaXI/Ashita-v4beta/blob/main/addons/petinfo/petinfo.lua#L37-L51
    per Thorny in discord when I asked why the range is 0, 2303:
        "entities are stored in a data structure 0x900 wide, 
        so it is the range of indices in that data structure"
    This allows us to get the Entity for what we killed 
    based on the mobID from the animation packet so we
    can call entity.Name on it
]]
local function GetEntityByServerId(sid)
    for x = 0, 2303 do
        local ent = GetEntity(x)
        if (ent ~= nil and ent.ServerId == sid) then
            return ent
        end
    end
    return nil
end

local function debugPrint(message)
    if todbot.settings.debug then
        print(chat.header('[todbot][Debug]') .. chat.message(message))
    end
end

--[[
    with a list that looks like
    T{
        {mobid = 123445, mobname = "name", window = 124}
    }
    should return the record if the name matches
    otherwise return false
]]
local function detectMobInListByName(name, list)
    for i, mob in ipairs(list) do
        if mob.mobname == name then
            debugPrint(mob.mobname)
            return mob
        end
    end
    debugPrint("No mob in list detected by name.")
    return false
end

ashita.events.register('packet_in', 'death_animation', function (e)
    --[[
        TODO: This packet fires for entity animations, including mob despawning.
        Unfortunately this means it also fires at morning when all the night mobs disappear.
        Need to figure out how to fix that, I don't really want to just stop triggering
        during night time. Maybe if I made a list of all the mobs that disappear on morning
        and then correlate that with the time of day might be safe.
        For now I'm leaving this bug.
        
        https://github.com/Windower/Lua/blob/dev/addons/libs/packets/fields.lua#L2201-L2210
    ]]
    local entity_animation_packet_id = 0x038
    if (e.id == entity_animation_packet_id) then
        local timestamp = os.time()
        local animation = struct.unpack('c4', e.data_modified, 0x0C + 0x01) -- kesu
        local mobIndex = struct.unpack('H', e.data_modified, 0x18 + 0x01)
        local mobID = struct.unpack('I', e.data_modified, 0x04 + 0x01)
        local mobWindow = 100

        --[[
            This animation name is usually either "deru" which means "spawning" and
            "kesu" which means despawning. Although the packet is also used for other things.
            We can safely ignore packets where animation ~= "kesu", however this does
            not filter out all packets we don't want. Some other animations have
            "kesu" in the animation field and are not monster despawn packets
        ]]
        if( animation ~= "kesu" ) then
            return
        end
        
        --[[
            I'm not really certain what this number is, but when mobs despawn its
            always 0. I was getting 17 in towns sometimes, have no idea what that is for.
        ]]
        if( mobIndex ~= 0 ) then
            return
        end

        if( mobID <= 0 ) then
            return
        end

        local entity = GetEntityByServerId(mobID)
        local name = string.format("MobID `%d`", mobID)
        if entity ~= nil then
            name = entity.Name
            if type(detectMobInListByName(name, todbot.settings.realList)) ~= "boolean" then
                mobWindow = detectMobInListByName(name, todbot.settings.realList).window
                debugPrint("'mobWindow' set to " .. mobWindow .. "for " .. name)
            end
        end
        --

        --[[
            Debug output
        ]]
        if todbot.settings.debug then
            local timestamp_format = "%Y-%m-%d %H:%M:%S %Z"
            local timestamp_string = os.date(timestamp_format, timestamp)
            local print_message = string.format("%s: %s", name, timestamp_string)
            local window = nil
            print(chat.header('todbot') .. chat.message(print_message));
            local message = string.format("%s: <t:%d:T> <t:%d:R> - Window <t:%d:R>", name, timestamp, timestamp, (timestamp + window))
            print(chat.header('todbot') .. chat.message(message));
            table.insert(todbot.recent_monsters, {name = name, timestamp = timestamp, window = window})
        end

        --[[
            I have a list of NMs in nm_list.lua but I would also like for
            users to be able to configure their own lists.
        ]]
        if( detectMobInListByName(name, todbot.settings.realList) == false ) then
            return
        end

        -- gui.lua uses todbot.recent_monsters to create a UI element
        table.insert(todbot.recent_monsters, {name = name, timestamp = timestamp, window = mobWindow})

        --[[
            Autopost if its turned on
        ]]
        local recent_monsters = deepCopy(todbot.recent_monsters)
        if todbot.settings.autopost then
            for i, monster in ipairs(recent_monsters) do
                imgui.PushID(i)
                imgui.TableNextRow()
                imgui.TableSetColumnIndex(0)

                imgui.Text(monster.name)
                imgui.TableNextColumn()

                local pt_format = "%Y-%m-%d %H:%M:%S %Z"
                local pt_timestamp = os.date(pt_format, monster.timestamp)
                imgui.Text(pt_timestamp)
                imgui.TableNextColumn()

                local message = string.format("%s: <t:%d:T> <t:%d:R> ", monster.name, monster.timestamp, monster.timestamp)

                imgui.SameLine()
                if( imgui.Button("Post") ) then
                    ashita.tasks.once(0, function()
                        sendToDiscordWebhook(message, todbot.settings.webhookURL, todbot.settings.avatarURL)
                    end)
                    table.remove(todbot.recent_monsters, i)
                end

                imgui.PopID()
            end
        end
    end
end)

ashita.events.register('unload', 'unload_cb', function()
    settings.save()
end)

ashita.events.register('command', 'command_cb', function(e)
    local command_args = e.command:lower():args()
    if table.contains({'/todbot'}, command_args[1]) then
        if table.contains({'config'}, command_args[2]) then
            gui.is_open[1] = not gui.is_open[1]
        elseif table.contains({'debug'}, command_args[2]) then
            todbot.settings.debug = not todbot.settings.debug
            print(chat.header('todbot') .. chat.message("Debug: " .. tostring(todbot.settings.debug)))
        elseif table.contains({'horizon'}, command_args[2]) then
            print(chat.header('todbot') .. chat.message("Now using Horizon Monster Table"))
            todbot.settings.realList = horizon_nm_list
        elseif table.contains({'insert'}, command_args[2]) then
            local fake = command_args[3] or "Fake"
            table.insert(todbot.recent_monsters, {name = fake, timestamp = os.time()})
        else
            print(chat.header('todbot') .. chat.message(todbot.settings.webhookURL))
            print(chat.header('todbot') .. chat.message(todbot.settings.avatarURL))
            print(chat.header('todbot') .. chat.message("Debug: " .. tostring(todbot.settings.debug)))
        end
    end
    return false
end)