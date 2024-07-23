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


## `register_stairs_slabs(Name, BaseItem, Tiles, DigGroups, Sounds, StairName, SlabName)`

Creates stairs, slabs and sometimes more.
Supports:
* mineclonXX
* farlands redo
* any game with stairs
* any game with stairs redo
* any game with stairs plus