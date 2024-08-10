# Functions API


## `can_interact_with_node(player, pos)`
returns `bool`

checks for the ability to interact with a node via:
* if a player
* owner metadata key
* protection_bypass

supports
* minetest game default if present
* else polyfill


## `register_stairs_slabs({def})`
Creates stairs, slabs and sometimes more.

Use with:
xcompat.functions.register_stairs_slabs({
            baseitem = "", --the item the nodes are based on
            recipeitem = "", --the item the nodes are crafted with, will use baseitem if unset

            name = "Willow",
            slab_name = "", --slab name, if nil will use name
            slab_name_double = "", --double slab name, if nil will use slab name, if nil will use name
            stair_name = "", --stair name, if nil will use name
            stair_name_out = "", --outer stair name, if nil will use stair name, if nil will use name
            stair_name_in = "", --outer stair name, if nil will use stair name, if nil will use name
            step_name = "", --step name, if nil will use name
            step_name_out = "", --outer step name, if nil will use step name, if nil will use name
            step_name_in = "", --outer step name, if nil will use step name, if nil will use name

            tiles = {"willow_planks.png"}, --the tiles the nodes will use, if nil will use baseitem's tiles
            groups = {}, --the groups the nodes will use, if nil will use baseitem's groups
            sounds = sounds, --the sounds the nodes will use, if nil will use baseitem's sounds, if baseitem has no sounds will base sounds off of baseitems groups, if nil will be silent
            worldalign = true/false, --if textures should be world aligned
})

Supports:
* MineclonXX
* Farlands Redo
* Hades
* any game with "stairs"
* any game with stairs redo
* any game with stairs plus