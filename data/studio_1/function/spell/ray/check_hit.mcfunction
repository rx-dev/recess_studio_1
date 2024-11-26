data remove storage studio_1:data input
execute store result storage studio_1:data input.charge int 1 run scoreboard players get @s charge

execute \
    if score #hit raycast matches 0 \
    positioned ~-0.9 ~-0.9 ~-0.9 \
    if entity @s[dx=0] \
    positioned ~0.95 ~0.95 ~0.95 \
    run function studio_1:spell/ray/hit with storage studio_1:data input
