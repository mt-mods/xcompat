local game_alias = {
    mineclone2 = "mineclonia",
}

local gameid = minetest.get_game_info().id

--for games that are similar/derviatives of other games
if game_alias[gameid] then gameid = game_alias[gameid] end

return gameid