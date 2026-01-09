if not core.global_exists("nodes_nature") then
    return {}
end

local pass = function(soundtable)
    return soundtable
end

local sound_api = {
    node_sound_default         = nodes_nature.node_sound_default,
    node_sound_stone_defaults  = nodes_nature.node_sound_stone_defaults,
    node_sound_dirt_defaults   = nodes_nature.node_sound_dirt_defaults,
    node_sound_grass_defaults  = nodes_nature.node_sound_dirt_defaults, --return dirt as some games use dirt vs grass
    node_sound_sand_defaults   = nodes_nature.node_sound_sand_defaults,
    node_sound_gravel_defaults = nodes_nature.node_sound_gravel_defaults,
    node_sound_wood_defaults   = nodes_nature.node_sound_wood_defaults,
    node_sound_leaves_defaults = nodes_nature.node_sound_leaves_defaults,
    node_sound_glass_defaults  = nodes_nature.node_sound_glass_defaults,
    node_sound_ice_defaults    = nodes_nature.node_sound_glass_defaults, --s/ice/glass
    node_sound_metal_defaults  = pass,
    node_sound_water_defaults  = nodes_nature.node_sound_water_defaults,
    node_sound_lava_defaults   = nodes_nature.node_sound_water_defaults, --s/lava/water
    node_sound_snow_defaults   = nodes_nature.node_sound_snow_defaults,
    node_sound_wool_defaults   = pass,
}

return sound_api
