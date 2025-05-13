scoreboard players add #iter raycast 1

particle minecraft:block{block_state: oxidized_copper} ~ ~ ~ .25 .25 .25 0 1 normal


scoreboard players operation $freq temp = #iter raycast
scoreboard players operation $freq temp %= $freq recess.timer
scoreboard players operation @s temp = @s recess.timer
scoreboard players operation @s temp %= $freq temp

execute if score $freq temp = #iter raycast run particle minecraft:sonic_boom ~ ~ ~ .3 .3 .3 0 4 normal

execute \
    if entity @s[scores={recess.timer=..15}] \
    as @a[distance=..1,scores={recess.damage_timer=..0}] \
    run function recess:gems/flux/ray/damage_player

execute \
    positioned ~-0.05 ~-0.05 ~-0.05 \
    as @e[tag=!self,tag=!ray_entity,dx=0] \
    run function recess:gems/flux/ray/check_hit

execute \
    unless block ~ ~ ~ air \
    if score #hit raycast matches 0 \
    run function recess:gems/flux/ray/hit_block

execute \
    if block ~ ~ ~ air \
    if score #hit raycast matches 0 \
    if score #iter raycast matches ..200 \
    positioned ^ ^ ^0.1 \
    run function recess:gems/flux/ray/iter
