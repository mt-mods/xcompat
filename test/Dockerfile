FROM ghcr.io/minetest-hosting/minetest-docker:5.8.0

USER root

# basics
RUN apk add --no-cache git

# mods to test
RUN mkdir -p /root/.minetest/worlds/world/worldmods/ &&\
    cd /root/.minetest/worlds/world/worldmods &&\
    git clone https://github.com/buckaroobanzay/mtt &&\
    git clone https://github.com/mt-mods/unifieddyes &&\
    git clone https://github.com/mt-mods/basic_materials &&\
    git clone https://github.com/mt-mods/pipeworks &&\
    git clone https://github.com/mt-mods/steel &&\
    git clone https://github.com/mt-mods/display_modpack &&\
    git clone https://github.com/mt-mods/homedecor_modpack

# available games
RUN mkdir -p /root/.minetest/games &&\
    cd /root/.minetest/games &&\
    git clone https://github.com/minetest/minetest_game &&\
    git clone --recurse-submodules https://github.com/TerraQuest-Studios/farlands_reloaded &&\
    git clone https://codeberg.org/mineclonia/mineclonia &&\
    git clone https://git.minetest.land/MineClone2/MineClone2 &&\
    git clone https://codeberg.org/Wuzzy/Hades_Revisited