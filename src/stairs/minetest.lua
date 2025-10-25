local function register(name, def)
    local splitName = name:split(":")
    local sName = splitName[2]

    stairs.register_stair_and_slab(
        sName,
        nil,
        def.groups,
        def.tiles,
        def.description,
        def.sounds
    )

    for _, type in pairs({"slab", "stair", "stair_inner", "stair_outer"}) do
        minetest.register_alias(splitName[1] .. ":" .. type .. "_" .. sName, "stairs:" .. type .. "_" .. sName)
    end
end

return {register = register}