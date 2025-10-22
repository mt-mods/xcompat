# Player API

## Usage

The player api can be accessed in your script through `xcompat.player`.

This object mimics the `player_api` from Minetest Game, and should be a drop-in
replacement in most cases. You should be able to simply replace instances
of `player_api` in your script with `xcompat.player`.


## Note on `xcompat.player.player_attached`

Reading & writing to this object works, but because it's a proxy table it can't
be looped over. 

Looping over this object would require lua5.2 `__pairs`/`__ipairs` metamethod support.
It would be possible to implement support for this through polyfill, 
using [this method](https://stackoverflow.com/a/77354254) 
(luajit supports this via 5.2 extensions), but it's not implemented as of now.
Additionally see [this engine issue](https://github.com/minetest/minetest/issues/15133).
