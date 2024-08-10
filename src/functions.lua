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

function functions.register_stairs_slabs(def)


	local BaseItem = def.baseitem or {}
	local nodedef = minetest.registered_nodes[def.baseitem]
	local Groups = def.groups or nodedef.groups
	local Tiles = def.tiles or nodedef.tiles
	local Sounds = def.sounds or nodedef.sounds or {}
	local RecipeItem = def.recipeitem or def.baseitem
	
	local Name = def.name
	local LName = def.lname or string.lower(Name):gsub("_", "")
	local SlabName = def.slabname or def.name
	local StairName = def.stairname or def.name

	--extra names for hades
	local OuterStairName = def.stair_name_out or def.stair_name or def.name
	local InnerStairName =	def.stair_name_in or def.stair_name or def.name
	local StepName = def.step_name or def.name
	local OuterStepName = def.step_name_out or def.step_name or def.name
	local InnerStepName = def.step_name_in or def.step_name or def.name
	local DoubleSlabName = def.slab_name_double or def.slab_name or def.name

	if minetest.global_exists("stairsplus") then
		if WorldAlign == true then
			WorldAlign = "world"
		elseif WorldAlign == false then
			WorldAlign = "node"
		elseif WorldAlign ~= "world" and WorldAlign ~= "node" then
			WorldAlign = "user"
		end
		--[[stairsplus:register_all(
		Name,
		Name,
		BaseItem,
		{
			tiles = Tiles,
			groups = Groups,
			sounds = Sounds
		}
		)]]
		stairsplus.api.register_all(BaseItem, 
		{
			tiles = Tiles,
			groups = DigGroups,
			sounds = Sounds
		}, 
		{
			align_style = WorldAlign,
			allow_override_groups = true
		})
	elseif minetest.global_exists("stairs") then
		if stairs.mod and stairs.mod == "redo" then
			if WorldAlign ~= true and WorldAlign ~= false and WorldAlign ~= "" then
				WorldAlign = ""
			end
			stairs.register_all(
				LName,
				RecipeItem,
				Groups,
				Tiles,
				Name,
				Sounds,
				WorldAlign
			)
		else
			stairs.register_stair_and_slab(
				LName,
				RecipeItem,
				Groups,
				Tiles,
				StairName,
				SlabName,
				Sounds
			)
		end
	elseif minetest.global_exists("mcl_stairs") then
		mcl_stairs.register_stair_and_slab(LName, {
			baseitem = BaseItem,
			recipeitem = RecipeItem,
			description_stair = StairName,
			description_slab = SlabName,
			tiles = Tiles,
		})
	elseif minetest.global_exists("hades_stairs") then
		hades_stairs.register_stair_and_slab_and_step(LName, BaseItem,
			Groups,
			Tiles,
			Stairname,
			OuterStairName,
			InnerStairName,
			SlabName,
			StepName,
			OuterStepName,
			InnerStepName,
			Sounds,
			DoubleSlabName
		)
	elseif minetest.global_exists("fl_stairs") then
		Groups.stairable = 1		
		minetest.override_item(BaseItem, {
			groups = Groups,
		})
	end
end

return functions