# XCompat

[![luacheck](https://github.com/mt-mods/xcompat/actions/workflows/luacheck.yml/badge.svg?branch=master)](https://github.com/mt-mods/xcompat/actions/workflows/luacheck.yml)
[![ContentDB](https://content.minetest.net/packages/mt-mods/xcompat/shields/downloads/)](https://content.minetest.net/packages/mt-mods/xcompat/)

Provides cross compatibility between games and mods for sounds and crafting materials.

Thanks to:
* MisterE, OgelGames, and Blockhead for naming advice/suggestion.
* luk3yx, Blockhead, BuckarooBanzai for bouncing ideas on the concept of this mod.

## Usage

See the respective sub apis doc file in /doc for detailed documentation.

## Directly supported games and mods

| Games             | Sounds    | Materials | Textures  | Player | Stairs | Crafting |
| ----------------- | --------- | --------- | --------- | ------ | ------ | -------- |
| Minetest Game     | x         | x         | x         | x      | x      | x        |
| MineClone2        | x         | x         |           | x      |        | x        |
| Mineclonia        | x         | x         |           | x      |        | x        |
| Hades Revisited   | x         | x         |           |        |        | x        |
| Farlands Reloaded | x         | x         | x         | x      | x      | x        |
| Exile             | x         |           |           |        |        |          |
| KSurvive 2        | x         |           |           |        |        | x        |
| Forgotten Lands   | x         |           |           |        |        |          |
| Development Test  |           | x         | x         |        |        | x        |
| Age of Mending    |           | x         |           |        |        | x        |

For functions see /doc/functions.md for the specifics relating to the function

**Mods**
* `basic_materials`
* `mesecons_materials`
* `moreores`
