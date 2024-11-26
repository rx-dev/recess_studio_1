scoreboard players add #iter raycast 1
scoreboard players operation #mod raycast = #iter raycast
scoreboard players set #8 raycast 8
scoreboard players operation #mod raycast %= #8 raycast 

execute \
    if score #iter raycast matches 4.. \ 
    if score #mod raycast matches 1 \
    run particle minecraft:flame ~ ~ ~ 0 0 0 0 1

execute positioned ~-0.05 ~-0.05 ~-0.05 as @e[tag=!self,tag=!ray_entity,dx=0] run function studio_1:spell/ray/check_hit
execute \
    if score #hit raycast matches 0 \
    if score #iter raycast matches ..300 \
    positioned ^ ^ ^0.1 \
    run function studio_1:spell/ray/iter
