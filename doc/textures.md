# Textures API

## Usage

To use a texture in your mod, find the texture you want by looking at one of the files in `/src/texture`, and append its path to `xcompat.textures`.

## Example

| Path | Result |
| -    | -      |
| xcompat.textures.wool.white         | `"wool_white.png"`           |
| xcompat.textures.wood.apple.planks  | `"default_wood.png"`         |
| xcompat.textures.wood.jungle.leaves | `"default_jungleleaves.png"` |
| xcompat.textures.glass.pane         | `"default_glass.png"`        |

For games like Minetest and Mineclonia, see the file `/src/textures/minetest.lua`.
