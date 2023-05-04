require('common')
local http = require("socket.http")
local https = require("socket.ssl.https")
local json = require("json")

addon.name = 'todbot'
addon.author = 'gnubeardo'
addon.version = '1.0'
addon.desc = 'posts TOD of NMs to a Discord webhook'
addon.link = 'https://github.com/ErikDahlinghaus/todbot'

local function sendToDiscordWebhook(message)
    --[[
        TODO: Move this to a setting and persist it PRIORITY
        Potentially add a UI for adding it but low priority
    ]]
    local webhookURL = "https://discord.com/api/webhooks/yourhook"
    
    local payload = {
        username = "todbot",
        content = message
    }
    local body = json.encode(payload)

    local headers = {
        ["Content-Type"] = "application/json",
        ["Content-Length"] = tostring(#body)
    }
    
    local response_body = {}
    local response_code, response_headers, response_status = https.request{
        url = webhookURL,
        method = "POST",
        headers = headers,
        source = ltn12.source.string(body),
        sink = ltn12.sink.table(response_body)
    }

    --[[
        TODO: This is for debugging failed requests
        In regular operation we just fire the webhook and
        hope for the best. But in the future maybe some
        error notification to the user would be good
        so they can post the TOD themselves. At least
        this would be able to print out an accurate
        timestamp for them
        TODO: Make this a function that prints this out
        if there is an error. Along with the timestamp.
    ]]
    -- local response_str = table.concat(response_body)
    -- print(response_status)
    -- print(response_str)
end

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

--[[
    TODO: This is a stub for detecting an NM so we only post NM TODs
]]
local function detectNM(entity)
    return true
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
        if( entity ~= nil ) then
            name = entity.Name
        end

        if( detectNM(entity) == false ) then
            return
        end

        local message = string.format("%s: <t:%d:T> <t:%d:R>", name, timestamp, timestamp)
        sendToDiscordWebhook(message)
    end
end)
