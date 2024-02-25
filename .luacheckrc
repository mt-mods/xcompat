unused_args = false
allow_defined_top = true

exclude_files = {".luacheckrc"}

globals = {
    "xcompat",
}

read_globals = {
    string = {fields = {"split"}},
    table = {fields = {"copy", "getn"}},

    --luac
    "math", "table",

    -- Builtin
    "vector", "ItemStack", "dump", "DIR_DELIM", "VoxelArea", "Settings", "PcgRandom", "VoxelManip", "PseudoRandom",

    --mod produced
    "minetest", "default", "mcl_sounds", "ks_sounds",
    "nodes_nature", "fl_stone", "fl_topsoil", "fl_trees",
    "hades_sounds", "rp_sounds",
}