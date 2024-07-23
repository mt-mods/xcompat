local functions = {}

function functions.can_interact_with_node(player, pos)
	--if we have default, use it
	if default then return default.can_interact_with_node(player, pos) end

	local owner = minetest.get_meta(pos):get_string("owner") or ""

	--check that we have a valid player
	if not player or not player:is_player() then return false end
	--check there privs for compat with areas
	if minetest.check_player_privs(player, "protection_bypass") then return true end
	--if a normal player, check if they are the owner
	if owner == "" or owner == player:get_player_name() then return true end

	return false
end

function functions.register_stairs_slabs(Name, BaseItem, Tiles, DigGroups, Sounds, StairName, SlabName)
	--skip if farlands as farlands reloaded uses diggroups to make stairs/slabs
	--if minetest.get_modpath("fl_core") then return end


	local LName = string.lower(Name)


	if minetest.global_exists("stairs") then
		if stairs.mod and stairs.mod == "redo" then
		stairs.register_all(
			LName,
			BaseItem,
			DigGroups,
			Tiles,
			Name,
			Sounds,
			--true/false world align texture
			true
		)
		else
		stairs.register_stair_and_slab(
			LName,
			BaseItem,
			DigGroups,
			Tiles,
			StairName,
			SlabName,
			Sounds
		)
		end
	elseif minetest.global_exists("stairsplus") then
		stairsplus:register_all(
		Name,
		Name,
		BaseItem,
		{
			description = Name,
			tiles = Tiles,
			groups = DigGroups,
			sounds = Sounds
		}
		)
	elseif minetest.global_exists("mcl_stairs") then
		--mcl_stairs.register_stair_and_slab(LName
		mcl_stairs.register_stair_and_slab(LName, {
			baseitem = BaseItem,
			--base_description = Name,
			description_stair = StairName,
			description_slab = SlabName,
		})
	elseif minetest.global_exists("fl_stairs") then
		minetest.override_item(BaseItem, {
			groups = {stairtable=1,},
		})
	end
end

return functions