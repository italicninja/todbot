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

        imgui.NewLine()

        local webhookURL = T{ todbot.settings.webhookURL }
        imgui.InputText('webhookURL', webhookURL, 1024)
        todbot.settings.webhookURL = table.concat(webhookURL)

        imgui.NewLine()

        --imgui.Text(todbot.settings.avatarURL)
        local avatarURL = T{ todbot.settings.avatarURL }
        imgui.InputText('avatarURL', avatarURL, 1024)
        todbot.settings.avatarURL = table.concat(avatarURL)

        imgui.NewLine()

      --  imgui.Text("autoPost")
        local autoPost = T{ todbot.settings.autoPost }
        imgui.Checkbox('autoPost', autoPost, 1024)
        todbot.settings.autoPost = autoPost
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

        if imgui.BeginTable('##tods', 4, bit.bor(ImGuiTableFlags_RowBg, ImGuiTableFlags_BordersH, ImGuiTableFlags_BordersV, ImGuiTableFlags_ScrollY)) then
            imgui.TableSetupColumn('Name', ImGuiTableColumnFlags_WidthStretch, 0, 0)
            imgui.TableSetupColumn('TOD', ImGuiTableColumnFlags_WidthFixed, 300, 0)
            imgui.TableSetupColumn('Window', ImGuiTableColumnFlags_WidthFixed, 300, 0)
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
                -- Check if monster.timestamp is not nil
                if monster.timestamp ~= nil then
                    -- Check if monster.window is not nil to add a timestamp
                    if monster.window ~= nil then
                        local win_format = "%Y-%m-%d %H:%M:%S %Z"
                        local win_timestamp = os.date(win_format, (monster.timestamp + monster.window))
                        imgui.Text(win_timestamp)
                        -- Format the message with the Repop information
                        message = string.format("%s: <t:%d:T> <t:%d:R> - Window: <t:%d:R>", monster.name, monster.timestamp, monster.timestamp, (monster.timestamp + monster.window))
                    else
                        -- Format the message without the Repop information
                        message = string.format("%s: <t:%d:T> <t:%d:R>", monster.name, monster.timestamp, monster.timestamp)
                    end
                else
                    -- Handle the case where monster.timestamp is nil
                    message = "Error: monster.timestamp is nil"
                end

                imgui.TableNextColumn()

                -- Copy button: Copies the 'message' to the clipboard and removes the monster from the list.
                if imgui.Button("Copy") then
                    ashita.misc.set_clipboard(message)
                    table.remove(todbot.recent_monsters, i)
                end

                -- SameLine for layout purposes
                imgui.SameLine()

                -- Post button: Sends the 'message' to a Discord webhook and removes the monster from the list.
                if imgui.Button("Post") then
                    ashita.tasks.once(0, function()
                        sendToDiscordWebhook(message, todbot.settings.webhookURL, todbot.settings.avatarURL)
                    end)
                    table.remove(todbot.recent_monsters, i)
                end

                -- SameLine for layout purposes
                imgui.SameLine()

                -- Dismiss button: Removes the monster from the list without any further action.
                if imgui.Button("Dismiss") then
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