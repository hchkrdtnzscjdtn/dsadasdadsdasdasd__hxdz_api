local hxdz = {}
local api = {}

local CreateThread = CThread


function hxdz.api.drawtext(x, y, w, h, font, text, r, g, b, a)
    SetTextFont(font)
    SetTextScale(w, h)
    SetTextColour(r, g, b, a)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end

--[[
    hxdz.api.drawtext() example
    hxdz.api.drawtext(0.211, 0.15, 0.7, 0.7, 2, "Hello World!", 255, 255, 255, 255)
    and you need this in loop so

    CThread(function ()
        while true do
            wait(0)
        hxdz.api.drawtext(0.211, 0.15, 0.7, 0.7, 2, "Hello World!", 255, 255, 255, 255)
        end
    end)
]]

function hxdz.api.drawrect(x, y, w, h, r, g, b, a)
    DrawRect(x, y, w, h, r, g, b, a)
end