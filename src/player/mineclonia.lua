local papi = {}

function papi.register_model(name, def)
    return mcl_player.player_register_model(name, def)
end

function papi.set_model(player, model)
    return mcl_player.player_set_model(player, model)
end

function papi.get_animation(player)
    return mcl_player.player_get_animation(player)
end

function papi.get_textures(player, textures)
    --todo: handle
end

function papi.set_textures(player, index, texture)
    --todo: handle
end

function papi.set_animation(player, anim_name, speed)
    return mcl_player.player_set_animation(player, anim_name, speed)
end

--todo: handle ignoring animations (maybe metatables?)

return papi