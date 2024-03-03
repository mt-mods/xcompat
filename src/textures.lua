local textures = {
    gravel = "[combine:16x16^[noalpha^[colorize:#3a3b3c",
    brick = "[combine:16x16^[noalpha^[colorize:#AA4A44",

    metal = {
        steel = {
            ore = "",
            ingot = "",
            block = "[combine:16x16^[noalpha^[colorize:#D3D3D3",
        },
        gold = {
            ore = "",
            ingot = "",
            block = "[combine:16x16^[noalpha^[colorize:#FFD700",
        },
    },
    glass = {
        pane = "[combine:16x16:" ..
            "0,0=\\[combine\\:1x16\\^[noalpha\\^[colorize\\:#ffffff:" ..
            "0,0=\\[combine\\:16x1\\^[noalpha\\^[colorize\\:#ffffff:" ..
            "0,15=\\[combine\\:16x1\\^[noalpha\\^[colorize\\:#ffffff:" ..
            "15,0=\\[combine\\:1x16\\^[noalpha\\^[colorize\\:#ffffff",
        block = "",
    },
    wood = {
        apple = {
            sapling = "",
            planks = "[combine:16x16^[noalpha^[colorize:#654321",
            trunk_side = "",
            trunk_top = "",
            leaves = "",
        },
        jungle = {
            sapling = "",
            planks = "[combine:16x16^[noalpha^[colorize:#563d2d",
            trunk_side = "",
            trunk_top = "",
            leaves = "",
        },
    },
    water = {
        tile = "[combine:16x16^[noalpha^[colorize:#00008b",
        animated = "",
    },
    wool = {
        white = "[combine:16x16^[noalpha^[colorize:#ffffff",
        black = "[combine:16x16^[noalpha^[colorize:#000000",
        grey = "[combine:16x16^[noalpha^[colorize:#313b3c",
        dark_grey = "[combine:16x16^[noalpha^[colorize:#313b3c",
    },
    grass = {
        top = "[combine:16x16^[noalpha^[colorize:#006400",
        side = "",
        dirt = "",
    },
}

if minetest.get_modpath("default") then
    textures = {
        gravel = "default_gravel.png",
        brick = "default_brick.png",

        metal = {
            steel = {
                ore = "",
                ingot = "",
                block = "default_steel_block.png",
            },
            gold = {
                ore = "",
                ingot = "",
                block = "default_gold_block.png",
            },
        },
        glass = {
            pane = "default_glass.png",
            block = "",
        },
        wood = {
            apple = {
                sapling = "",
                planks = "default_wood.png",
                trunk_side = "",
                trunk_top = "",
                leaves = "",
            },
            jungle = {
                sapling = "",
                planks = "default_junglewood.png",
                trunk_side = "",
                trunk_top = "",
                leaves = "",
            },
        },
        water = {
            tile = "default_water.png",
            animated = "",
        },
        wool = {
            white = "wool_white.png",
            black = "wool_black.png",
            grey = "wool_grey.png",
            dark_grey = "wool_dark_grey.png",
        },
        grass = {
            top = "default_grass.png",
            side = "default_dirt.png^default_grass_side.png",
            dirt = "default_dirt.png",
        },
    }
end

return textures