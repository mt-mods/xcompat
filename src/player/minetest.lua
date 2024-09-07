local papi = {}

function papi.register_model(name, def)
    return player_api.register_model(name, def)
end

function papi.set_model(player, model)
    return player_api.set_model(player, model)
end

function papi.get_animation(player)
    return player_api.get_animation(player)
end

function papi.get_textures(player, textures)
    return player_api.get_textures(player, textures)
end

function papi.set_textures(player, index, texture)
    return player_api.set_textures(player, index, texture)
end

function papi.set_animation(player, anim_name, speed, loop)
    return player_api.set_animation(player, anim_name, speed, loop)
end


local papi_metatable = {
    __newindex = function (table, key, value)
        player_api.player_attached[key] = value

        rawset(table, key, value)
    end
}

local player_api_metatable = {
    __newindex = function (table, key, value)
        rawset(papi.player_attached, key, value)
        rawset(table, key, value)
    end
}

papi.player_attached = {}

--when a value is set in xcompat api, this will also set it in the player api
setmetatable(papi.player_attached, papi_metatable)

--when a value is set in player api, this will also set it in the xcompat api
setmetatable(player_api.player_attached, player_api_metatable)

return papi