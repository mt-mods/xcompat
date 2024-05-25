local materials_list = minetest.get_dir_list(xcompat.modpath.."/src/materials", false)
local materials = {}
for _, material in ipairs(materials_list) do
    local gameid = material:sub(1, -5)
    materials[gameid] = dofile(xcompat.modpath.."/src/materials/"..material)
end

local textures_list = minetest.get_dir_list(xcompat.modpath.."/src/textures", false)
local textures = {}
for _, texture in ipairs(textures_list) do
    local gameid = texture:sub(1, -5)
    textures[gameid] = dofile(xcompat.modpath.."/src/textures/"..texture)
end

minetest.register_chatcommand("xcompat_test_materials", {
    description = "Test materials",
    privs = {server=true},
    func = function(name, _)
        local reference_materials = materials["minetest"]

        for gameid, game_materials in pairs(materials) do
            for material, _ in pairs(reference_materials) do
                if not game_materials[material] then
                    minetest.chat_send_player(name, "Missing material: "..material.." in game: "..gameid)
                end
            end
        end

        minetest.chat_send_player(name, "Materials test complete")
    end
})

--WARNING: only handles top level of table currently
--TODO: handle nested tables
minetest.register_chatcommand("xcompat_test_textures", {
    description = "Test textures",
    privs = {server=true},
    func = function(name, _)
        local reference_textures = textures["minetest"]

        for gameid, game_textures in pairs(textures) do
            for texture, _ in pairs(reference_textures) do
                if not game_textures[texture] then
                    minetest.chat_send_player(name, "Missing texture: "..texture.." in game: "..gameid)
                end
            end
        end

        minetest.chat_send_player(name, "Textures test complete")
    end
})