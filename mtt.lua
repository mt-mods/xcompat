
-- emerge a part of the world (basic smoketest)
mtt.emerge_area({ x=0, y=0, z=0 }, { x=10, y=10, z=10 })

-- check nodelist
local info = minetest.get_game_info()
mtt.validate_nodenames(minetest.get_worldpath() .. "/nodelist/" .. info.id .. ".txt")
