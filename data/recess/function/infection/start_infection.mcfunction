title @a title {text: "A deep dread fills your mind...", color: "dark_red"}
title @a subtitle {text: "You feel an infection taking hold.", color: "red"}
scoreboard players set @a flamethrower_recipe 1
advancement revoke @s only recess:infection/center_infection
function recess:infection/infect_block

execute positioned ~ ~ ~-1 summon wandering_trader run function recess:infection/mob/ghost/on_spawn
execute positioned ~ ~ ~1 summon wandering_trader run function recess:infection/mob/ghost/on_spawn
execute positioned ~-1 ~ ~ summon wandering_trader run function recess:infection/mob/ghost/on_spawn
execute positioned ~1 ~ ~ summon wandering_trader run function recess:infection/mob/ghost/on_spawn

effect give @s minecraft:resistance 5 3 true
