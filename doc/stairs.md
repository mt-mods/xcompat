you can use this via `xcompat.stairs.register(nodename, def)`

an example would be:  
```lua
xcompat.stairs.register(
    "xcompat_stairs_test:fake_node",
    core.registered_nodes["xcompat_stairs_test:fake_node"]
)
```

if the game you are running on isnt supported (see readme), 
it falls back to using a polyfill. each backend adds aliases 
to the polyfill, mainly so that if we add a future backend 
that ran on polyfill, everything keeps working (yay)

at this time stairsplus/moreblocks compatibility/upgrading 
isnt supported, however should be added in the future. for 
now, in your mod code do something like the following:

```lua
if core.registered_modes("moreblocks") then
    --call stairs plus
else 
    xcompat.stairs.register(node, def)
end
```

that way in the future nothing will break when support is 
added and at your convince the first part of the if can be 
removed