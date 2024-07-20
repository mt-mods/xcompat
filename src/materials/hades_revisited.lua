local materials = {
    apple_leaves = "hades_trees:leaves",
    apple_log = "hades_trees:tree",
    apple_planks = "hades_trees:wood",
    axe_bronze = "hades_core:axe_bronze",
    axe_diamond = "hades_core:axe_diamond",
    axe_steel = "hades_core:axe_steel",
    axe_stone = "hades_core:axe_stone",
    axe_wood = "hades_core:axe_wood",
    birch_leaves = "hades_core:birch_leaves",
    birch_log = "hades_trees:birch_tree",
    birch_planks = "hades_trees:cream_wood",
    book = "hades_core:book",
    -- hades has no bowl but you get plate on eat so makes most sense.
    bowl = "hades_food:plate",
    brick = "hades_core:brick",
    chest = "hades_chests:chest";
    clay_brick = "hades_core:clay_brick",
    clay_lump = "hades_core:clay_lump",
    coal_lump = "hades_core:coal_lump",
    cobble = "hades_core:cobble",
    copper_block = "hades_core:copperblock",
    copper_ingot = "hades_core:copper_ingot",
    desert_sand = "hades_core:volcanic_sand",
    desert_stone = "hades_core:stone_baked",
    diamond = "hades_core:diamond",
    dirt = "hades_core:dirt",
    dirt_with_grass = "hades_core:dirt_with_grass",
    dye_black = "dye:black",
    dye_blue = "dye:blue",
    dye_brown = "dye:brown",
    dye_cyan = "dye:cyan",
    dye_dark_green = "dye:dark_green",
    dye_dark_grey = "dye:dark_grey",
    dye_green = "dye:green",
    dye_grey = "dye:grey",
    dye_orange = "dye:orange",
    dye_pink = "dye:pink",
    dye_red = "dye:red",
    dye_violet = "dye:violet",
    dye_white = "dye:white",
    dye_yellow = "dye:yellow",
    empty_bucket = "hades_core:fertile_sand",
    flint = "",
    glass = "hades_core:glass",
    glass_block = "hades_core:glass",
    glass_bottle = "vessels:glass_bottle",
    gold_block = "hades_core:goldblock",
    gold_ingot = "hades_core:gold_ingot",
    gravel = "hades_core:gravel",
    iron_lump = "hades_core:iron_lump",
    jungle_leaves = "hades_trees:jungle_leaves",
    mese = "hades_core:mese",
    mese_crystal = "hades_core:mese_crystal",
    mese_crystal_fragment = "hades_core:mese_crystal_fragment",
    obsidian_glass = "hades_core:obsidian_glass",
    paper = "hades_core:paper",
    pick_steel = "hades_core:pick_steel",
    sand = "hades_core:fertile_sand",
    sandstone = "hades_core:sandstone",
    silicon = "hades_materials:silicon",
    silver_ingot = "--unknown--",
    slab_stone = "stairs:slab_stone",
    slab_wood = "stairs:slab_wood",
    steel_block = "hades_core:steelblock",
    steel_ingot = "hades_core:steel_ingot",
    stone = "hades_core:stone",
    string = "hades_farming:string",
    tin_block = "hades_core:tinblock",
    tin_ingot = "hades_core:tin_ingot",
    torch = "hades_torches:torch",
    -- Since hades doesnt have buckets or water for the user,
    -- using dirt from near water to pull the water out
    water_bucket = "hades_core:dirt",
    water_flowing = "hades_core:water_flowing",
    water_source = "hades_core:water_source",
    wool_black = "wool:black",
    wool_brown = "wool:brown",
    wool_dark_green = "wool:dark_green",
    wool_green = "wool:green",
    wool_grey = "wool:grey",
    wool_white = "wool:white",
}

if minetest.get_modpath("hades_bucket") then
    materials["water_bucket"] = "hades_bucket:bucket_water"
    materials["empty_bucket"] = "hades_bucket:bucket_empty"
end
if minetest.get_modpath("hades_extraores") then
    materials["silver_ingot"] = "hades_extraores:silver_ingot"
    materials["aluminum_ingot"] = "hades_extraores:aluminum_ingot"
end
if minetest.get_modpath("hades_default") then
    materials.desert_sand = "hades_default:desert_sand"
end
if minetest.get_modpath("hades_technic") then
    materials.lead_ingot = "hades_technic:lead_ingot"
    materials.carbon_steel_ingot = "hades_technic:carbon_steel_ingot"
    materials.stainless_steel_ingot = "hades_technic:stainless_steel_ingot"
end

return materials