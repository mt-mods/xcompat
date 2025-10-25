local function register(name, _)
    local splitName = name:split(":")
    local sName = splitName[2]

    local groups = core.registered_nodes[name].groups
    groups.stairable = 1

    core.override_item(name, {groups = groups})

    local flStairNameOverrides = {
        ["stair_inner"] = "inner_stair",
        ["stair_outer"] = "outer_stair"
    }

    for _, type in pairs({"slab", "stair", "stair_inner", "stair_outer"}) do


        minetest.register_alias(
            splitName[1] .. ":" .. type .. "_" .. sName,
            splitName[1] .. ":" .. sName .. "_" .. (flStairNameOverrides[type] or type)
        )
    end
end

return {register = register}