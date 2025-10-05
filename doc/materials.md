# Materials API

The materials can be accessed anywhere in your mod with `xcompat.materials.material_name`, e.g. `xcompat.materials.steel_ingot` for whichever string name would closest represent the steel_ingot material in the current game.


The `xcompat.materials` variable is changed to contain the correct material names for whichever game is launched. See the contents of `/src/materials/` for supported games and materials. 

E.g. the `/src/materials/mineclonia.lua` file shows what the keys of `xcompat.materials` resolve to when playing Mineclonia, such as `xcompat.materials.steel_ingot` resolving to `mcl_core:iron_ingot`, and `xcompat.materials.mesa_crystal` resolving to `mcl_redstone:redstone` if supported.
