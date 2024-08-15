local materials = {
    sand = "fl_stone:sand",
    sandstone = "fl_stone:sandstone",
    gravel = "fl_topsoil:gravel",
    flint = "fl_topsoil:flint",
    copper_ingot = "fl_ores:copper_ingot",
    steel_ingot = "fl_ores:iron_ingot",
    gold_ingot = "fl_ores:gold_ingot",
    tin_ingot = "fl_ores:tin_ingot",
    copper_block = "fl_ores:copper_block",
    steel_block = "fl_ores:iron_block",
    gold_block = "fl_ores:gold_block",
    tin_block = "fl_ores:tin_block",
    axe_steel = "fl_tools:steel_axe",
    axe_diamond = "fl_tools:diamond_axe",
    axe_bronze = "fl_tools:bronze_axe",
    axe_stone = "fl_tools:stone_axe",
    axe_wood = "fl_tools:wood_axe",
    pick_steel = "fl_tools:steel_pick",
    mese = "fl_ores:iron_ingot",
    mese_crystal = "fl_ores:iron_ingot",
    mese_crystal_fragment = "fl_ores:iron_ingot",
    torch = "fl_light_sources:torch",
    diamond = "fl_ores:diamond",
    clay_lump = "fl_bricks:clay_lump",
    water_bucket = "fl_bucket:bucket_water",
    empty_bucket = "fl_bucket:bucket",
    dye_dark_grey = "fl_dyes:dark_grey_dye",
    dye_black = "fl_dyes:black_dye",
    dye_white = "fl_dyes:white_dye",
    dye_green = "fl_dyes:green_dye",
    dye_red = "fl_dyes:red_dye",
    dye_yellow = "fl_dyes:yellow_dye",
    dye_brown = "fl_dyes:brown_dye",
    dye_blue = "fl_dyes:blue_dye",
    dye_violet = "fl_dyes:violet_dye",
    dye_grey = "fl_dyes:grey_dye",
    dye_dark_green = "fl_dyes:dark_green_dye",
    dye_orange = "fl_dyes:orange_dye",
    dye_pink = "fl_dyes:pink_dye",
    dye_cyan = "fl_dyes:cyan_dye",
    dye_magenta = "fl_dyes:magenta_dye",
    silver_ingot = "fl_ores:iron_ingot",
    silicon = "mesecons_materials:silicon",
    string = "fl_plantlife:oxeye_daisy",
    paper = "",
    book = "",
    iron_lump = "fl_ores:iron_ore",
    wool_grey = "",
    wool_green = "",
    wool_dark_green = "",
    wool_brown = "",
    wool_black = "",
    wool_white = "",
    slab_stone = "fl_stone:stone_slab",
    slab_wood = "fl_trees:apple_plank_slab",
    glass = "fl_glass:framed_glass",
    glass_block = "fl_glass:framed_glass",
    glass_bottle = "fl_bottles:bottle",
    coal_lump = "fl_ores:coal_ore",
    stone = "fl_stone:stone",
    desert_stone = "fl_stone:desert_stone",
    desert_sand = "fl_stone:desert_sand",
    chest = "fl_storage:wood_chest",
    cobble = "fl_stone:stone_rubble",
    brick = "",
    obsidian_glass = "",
    water_source = "fl_liquids:water_source",
    water_flowing = "fl_liquids:water_flowing",
    dirt = "fl_stone:dirt",
    dirt_with_grass = "fl_topsoil:dirt_with_grass",
    apple_leaves = "fl_trees:apple_leaves",
    apple_log = "fl_trees:apple_trunk",
    apple_planks = "fl_trees:apple_plank",
    birch_leaves = "fl_trees:aspen_leaves",
    birch_log = "fl_trees:aspen_trunk",
    birch_planks = "fl_trees:aspen_plank",
    jungle_leaves = "fl_trees:jungletree_leaves",
    bowl = "",
    stick = "fl_trees:stick",
}

if minetest.get_modpath("basic_materials") then
    materials.paper = "basic_materials:plastic_sheet"
end

if minetest.registered_items["farming:bowl"] then
    materials.bowl = "farming:bowl"
elseif minetest.get_modpath("x_farming") then
    materials.bowl = "x_farming:bowl"
end

return materials