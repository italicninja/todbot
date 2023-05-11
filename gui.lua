require('common');
local settings = require('settings')
local imgui = require('imgui')

local gui = T{
    is_open = T{ False }
}

function register_gui(todbot)
    ashita.events.register('d3d_present', 'present_cb', function ()
        if (not gui.is_open[1]) then
            return;
        end

        imgui.SetNextWindowSize({ -1, -1 });
        if (imgui.Begin('todbot', gui.is_open)) then
            imgui.Text(todbot.settings.webhookURL)
            imgui.Text(todbot.settings.avatarURL)
        end
        imgui.End();
    end)
end

return gui