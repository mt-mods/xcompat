local materials_list = minetest.get_dir_list(xcompat.modpath.."/src/materials", false)
local materials = {}
for _, material in ipairs(materials_list) do
    local material_name = material:sub(1, -5)
    materials[material_name] = dofile(xcompat.modpath.."/src/materials/"..material)
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
    end
})