require('common');
local settings = require('settings')
local imgui = require('imgui')

local gui = T{
    is_open = T{ False }
}

function register_gui(todbot)
    ashita.events.register('d3d_present', 'present_cb', function ()
        if (not gui.is_open[1]) then
            return
        end

        imgui.SetNextWindowSize({ -1, -1 })
        if (imgui.Begin('todbot', gui.is_open)) then
            imgui.Text(todbot.settings.webhookURL)
            local webhookURL = T{ todbot.settings.webhookURL }
            imgui.InputText('webhookURL', webhookURL, 512)
            todbot.settings.webhookURL = table.concat(webhookURL)

            imgui.NewLine()

            imgui.Text(todbot.settings.avatarURL)
            local avatarURL = T{ todbot.settings.avatarURL }
            imgui.InputText('avatarURL', avatarURL, 512)
            todbot.settings.avatarURL = table.concat(avatarURL)
        end
        imgui.End()
    end)

    settings.register('settings', 'settings_update', function (s)
        if (s ~= nil) then
            todbot.settings = s
        end
        settings.save()
    end)
end

return gui