# Textures API

## Usage

To use a texture in your mod, find the texture you want by looking at one of
the files in `/src/texture`, and append its path to `xcompat.textures`.

If a texture isn't supported for the current game, xcompat creates a solid 
color texture using texture modifiers as a fallback, ensuring compatibility.

## Example

| Path                                | Result in Minetest Game      |
| -                                   | -                            |
| xcompat.textures.wool.white         | `"wool_white.png"`           |
| xcompat.textures.wood.apple.planks  | `"default_wood.png"`         |
| xcompat.textures.wood.jungle.leaves | `"default_jungleleaves.png"` |
| xcompat.textures.glass.pane         | `"default_glass.png"`        |

For games like Minetest and Mineclonia, see the file `/src/textures/minetest.lua`.
