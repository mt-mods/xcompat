local supported_games = {
    mineclone2 = "mineclonia",
    mineclonia = "mineclonia",
    farlands_reloaded = "farlands_reloaded",
    minetest = "minetest",
    hades_revisited = "hades",
    Exile = "exile",
    ksurvive2 = "ksurvive2",
}

local game_modnames = {
    mineclonia = "mcl_core",
    farlands_reloaded = "fl_core",
    minetest = "default",
    hades = "hades_core",
    exile = "exile_env_sounds",
    ksurvive2 = "ks_metals",
}

local real_gameid = "xcompat_unknown_gameid"

if type(minetest.get_game_info) == "function" then
    real_gameid = minetest.get_game_info().id
end

local gameid = supported_games[real_gameid]

if not gameid then
    for game, modname in pairs(game_modnames) do
        if minetest.get_modpath(modname) then
            gameid = game
            break
        end
    end
end

return gameid or "xcompat_unknown_gameid", real_gameid