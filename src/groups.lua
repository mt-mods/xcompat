local function on_mods_loaded()
    for name, def in pairs(minetest.registered_nodes) do
        if def.groups and def.groups.xcompat_autohandle_groups and def.groups.xcompat_autohandle_groups==1 then
            local groups = table.copy(def.groups)

            groups.xcompat_autohandle_groups = nil
            groups.xcompat_was_handled = 1

            minetest.override_item(name, {
                groups = groups
            })
        end
    end

    --todo: override minetest.register_node to handle groups registered after this point
end

--sticking it at the front so that our overrides are applied first
table.insert(minetest.registered_on_mods_loaded, 1, on_mods_loaded)

--test node, delete before merge
minetest.register_node("xcompat:groups_test", {
    description = "xCompat Groups test",
    groups = {xcompat_autohandle_groups=1},
    tiles = {xcompat.textures.gravel},
})