scoreboard players add #iter raycast 1

execute if score #iter raycast matches 6.. run particle minecraft:block_crumble{block_state:"packed_ice"} ~ ~ ~ 0.1 0.1 0.1 0.1 1

execute positioned ~-0.05 ~-0.05 ~-0.05 as @e[tag=!ray_entity,dx=0] run function studio_1:ice_wand/check_hit
execute if score #hit raycast matches 0 if score #iter raycast matches ..300 positioned ^ ^ ^0.1 run function studio_1:ice_wand/cast
