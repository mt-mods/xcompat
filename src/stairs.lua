local filename = xcompat.gameid

--if we dont have a stairs file for the game, use xcompat_agnostic
if not xcompat.utilities.file_exists(xcompat.modpath .. "/src/stairs/" .. filename .. ".lua") then
    filename = "xcompat_agnostic"
end

return dofile(xcompat.modpath .. "/src/stairs/" .. filename .. ".lua")