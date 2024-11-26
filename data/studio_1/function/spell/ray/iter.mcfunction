scoreboard players add #iter raycast 1
scoreboard players operation #mod raycast = #iter raycast
scoreboard players set #8 raycast 8
scoreboard players operation #mod raycast %= #8 raycast 

$execute \
    if score #mod raycast matches 1 \
    run particle minecraft:flame ~ ~ ~ 0.$(charge) 0.$(charge) 0.$(charge) 0 $(charge)

execute positioned ~-0.05 ~-0.05 ~-0.05 as @e[tag=!self,tag=!ray_entity,dx=0] run function studio_1:spell/ray/check_hit
$execute \
    if block ~ ~ ~ air \
    if score #hit raycast matches 0 \
    if score #iter raycast matches ..$(charge)00 \
    positioned ^ ^ ^0.1 \
    run function studio_1:spell/ray/iter with storage studio_1:data input
