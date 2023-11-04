local settings = require('settings')
local imgui = require('imgui')
require("discord")

local gui = T{
    is_open = T{ False }
}

function render_config_menu(todbot)
    if (not gui.is_open[1]) then
        return
    end

    imgui.SetNextWindowSize({ -1, -1 })
    if (imgui.Begin('todbot', gui.is_open)) then
        imgui.Text(todbot.settings.webhookURL)
        local webhookURL = T{ todbot.settings.webhookURL }
        imgui.InputText('webhookURL', webhookURL, 1024)
        todbot.settings.webhookURL = table.concat(webhookURL)

        imgui.NewLine()

        imgui.Text(todbot.settings.avatarURL)
        local avatarURL = T{ todbot.settings.avatarURL }
        imgui.InputText('avatarURL', avatarURL, 1024)
        todbot.settings.avatarURL = table.concat(avatarURL)

        imgui.NewLine()

        imgui.Text(todbot.settings.autoPost)
        local autoPost = T{ todbot.settings.autoPost }
        imgui.Checkbox('autoPost', autoPost, 1024)
        todbot.settings.autoPost = table.concat(autoPost)
    end
    imgui.End()
end

function deepCopy(original)
    local copy
    if type(original) == "table" then
        copy = {}
        for key, value in next, original, nil do
            copy[deepCopy(key)] = deepCopy(value)
        end
        setmetatable(copy, deepCopy(getmetatable(original)))
    else
        copy = original
    end
    return copy
end

local monster_tod_open = T{ true }
function render_monster_tod_popup(todbot)
    if next(todbot.recent_monsters) == nil then
        return
    end

    local recent_monsters = deepCopy(todbot.recent_monsters)
    imgui.SetNextWindowSize({ -1, -1 })
    if (imgui.Begin('monster_tod', monster_tod_open, ImGuiWindowFlags_NoCollapse)) then
        if( imgui.Button("Dismiss All") ) then
            todbot.recent_monsters = T{}
        end
        imgui.Separator()

        if imgui.BeginTable('##tods', 3, bit.bor(ImGuiTableFlags_RowBg, ImGuiTableFlags_BordersH, ImGuiTableFlags_BordersV, ImGuiTableFlags_ScrollY)) then
            imgui.TableSetupColumn('Name', ImGuiTableColumnFlags_WidthStretch, 0, 0)
            imgui.TableSetupColumn('TOD', ImGuiTableColumnFlags_WidthFixed, 300, 0)
            imgui.TableSetupColumn('Action', ImGuiTableColumnFlags_WidthFixed, 150, 0)
            imgui.TableHeadersRow();

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

                local message = ""
                if (monster.window ~= nil) then -- If we know the Repop Window, Add a timestamp
                    message = string.format("%s: <t:%d:T> <t:%d:R> ", monster.name, monster.timestamp, monster.timestamp, " - Respawn window open in ")
                else
                    message = string.format("%s: <t:%d:T> <t:%d:R> ", monster.name, monster.timestamp, monster.timestamp)
                end

                if( imgui.Button("Copy") ) then
                    ashita.misc.set_clipboard(message)
                    table.remove(todbot.recent_monsters, i)
                end
                imgui.SameLine()
                if( imgui.Button("Post") ) then
                    ashita.tasks.once(0, function()
                        sendToDiscordWebhook(message, todbot.settings.webhookURL, todbot.settings.avatarURL)
                    end)
                    table.remove(todbot.recent_monsters, i)
                end
                imgui.SameLine()
                if( imgui.Button("Dismiss") ) then
                    table.remove(todbot.recent_monsters, i)
                end

                imgui.PopID()
            end
            imgui.EndTable()
        end
    end
    imgui.End()
end

function register_gui(todbot)
    ashita.events.register('d3d_present', 'present_cb', function ()
        render_config_menu(todbot)
        render_monster_tod_popup(todbot)
    end)
end

return gui