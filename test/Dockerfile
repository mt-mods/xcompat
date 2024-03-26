FROM ghcr.io/minetest-hosting/minetest-docker:5.8.0

USER root

# basics
RUN apk add --no-cache git

# mods to test
RUN mkdir -p /root/.minetest/worlds/world/worldmods/ &&\
    cd /root/.minetest/worlds/world/worldmods &&\
    git clone --depth=1 https://github.com/buckaroobanzay/mtt &&\
    git clone --depth=1 https://github.com/mt-mods/unifieddyes &&\
    git clone --depth=1 https://github.com/mt-mods/basic_materials &&\
    git clone --depth=1 https://github.com/mt-mods/pipeworks &&\
    git clone --depth=1 https://github.com/mt-mods/steel &&\
    git clone --depth=1 https://github.com/mt-mods/display_modpack &&\
    git clone --depth=1 https://github.com/mt-mods/homedecor_modpack

# available games
RUN mkdir -p /root/.minetest/games &&\
    cd /root/.minetest/games &&\
    git clone --depth=1 https://github.com/minetest/minetest_game &&\
    git clone --depth=1 --recurse-submodules https://github.com/TerraQuest-Studios/farlands_reloaded &&\
    git clone --depth=1 https://codeberg.org/mineclonia/mineclonia &&\
    git clone --depth=1 https://git.minetest.land/MineClone2/MineClone2 mineclone2 &&\
    git clone --depth=1 https://codeberg.org/Wuzzy/Hades_Revisited hades_revisited