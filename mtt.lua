
-- emerge a part of the world (basic smoketest)
mtt.emerge_area({ x=0, y=0, z=0 }, { x=10, y=10, z=10 })

local nodelist
if minetest.get_modpath("default") then
    nodelist = "minetest_game"
elseif minetest.get_modpath("mcl_init") then
    nodelist = "mineclonia"
end

if nodelist then
    -- nodelist available
    mtt.validate_nodenames(minetest.get_worldpath() .. "/nodelist/" .. nodelist .. ".txt")
end