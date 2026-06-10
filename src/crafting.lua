local filename = xcompat.gameid

--if we dont have a crafting file for the game, use minetest
if not xcompat.utilities.file_exists(xcompat.modpath .. "/src/crafting/" .. filename .. ".lua") then
    filename = "minetest"
end

return dofile(xcompat.modpath .. "/src/crafting/" .. filename .. ".lua")
