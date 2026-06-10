
-- assumes mtg-style crafting definition
return function(def)
    local t = def.type
    if t == "fuel" then
        local item = def.recipe
        local igroups = core.registered_items[item].groups
        igroups.fuel = def.burntime
        core.override_item(item, {groups = igroups})
        return
    elseif t == "cooking" then
        local result = def.output
        local is_output_edible =
            (core.get_item_group(result, "edible") > 0) or
            (core.get_item_group(result, "food") > 0)
        return aom_cooking.register_cooking({
            raw = def.recipe,
            cooked = result,
            cook_time = def.cooktime,
            groups = {is_output_edible and "cooker_boil" or "cooker_crucible"}
        })
    else
        core.register_craft(def) -- age of mending automatically converts recipes
    end
end
