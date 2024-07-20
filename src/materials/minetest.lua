local materials = {
    apple_leaves = "default:leaves",
    apple_log = "default:tree",
    apple_planks = "default:wood",
    axe_bronze = "default:axe_bronze",
    axe_diamond = "default:axe_diamond",
    axe_steel = "default:axe_steel",
    axe_stone = "default:axe_stone",
    axe_wood = "default:axe_wood",
    birch_leaves = "default:aspen_leaves",
    birch_log = "default:aspen_tree",
    birch_planks = "default:aspen_wood",
    book = "default:book",
    bowl = "",
    brick = "default:brick",
    chest = "default:chest",
    clay_lump = "default:clay_lump",
    coal_lump = "default:coal_lump",
    cobble = "default:cobble",
    copper_block = "default:copperblock",
    copper_ingot = "default:copper_ingot",
    desert_sand = "default:desert_sand",
    desert_stone = "default:desert_stone",
    diamond = "default:diamond",
    dirt = "default:dirt",
    dirt_with_grass = "default:dirt_with_grass",
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
    empty_bucket = "bucket:bucket_empty",
    flint = "default:flint",
    glass = "default:glass",
    glass_block = "default:glass",
    glass_bottle = "vessels:glass_bottle",
    gold_block = "default:goldblock",
    gold_ingot = "default:gold_ingot",
    gravel = "default:gravel",
    iron_lump = "default:iron_lump",
    jungle_leaves = "default:jungleleaves",
    mese = "default:mese",
    mese_crystal = "default:mese_crystal",
    mese_crystal_fragment = "default:mese_crystal_fragment",
    obsidian_glass = "default:obsidian_glass",
    paper = "default:paper",
    pick_steel = "default:pick_steel",
    sand = "default:sand",
    sandstone = "default:sandstone",
    silicon = "mesecons_materials:silicon",
    slab_stone = "stairs:slab_stone",
    slab_wood = "stairs:slab_wood",
    steel_block = "default:steelblock",
    steel_ingot = "default:steel_ingot",
    stone = "default:stone",
    string = "farming:string",
    tin_block = "default:tinblock",
    tin_ingot = "default:tin_ingot",
    torch = "default:torch",
    water_bucket = "bucket:bucket_water",
    water_flowing = "default:water_flowing",
    water_source = "default:water_source",
    wool_black = "wool:black",
    wool_brown = "wool:brown",
    wool_dark_green = "wool:dark_green",
    wool_green = "wool:green",
    wool_grey = "wool:grey",
    wool_white = "wool:white",
}

if minetest.registered_items["farming:bowl"] then
    materials.bowl = "farming:bowl"
elseif minetest.get_modpath("x_farming") then
    materials.bowl = "x_farming:bowl"
end

if minetest.get_modpath("moreores") then
    materials.silver_ingot = "moreores:silver_ingot"
end

if minetest.get_modpath("technic") then
	materials.lead_ingot = "technic:lead_ingot"
	materials.carbon_steel_ingot = "technic:carbon_steel_ingot"
	materials.stainless_steel_ingot = "technic:stainless_steel_ingot"
end

if minetest.get_modpath("aloz") then
	materials.aluminum_ingot = "aloz:aluminum_ingot"
end

if minetest.get_modpath("techage") then
	materials.aluminum_ingot = "techage:aluminum"
end

return materials