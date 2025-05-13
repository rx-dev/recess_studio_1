scoreboard players add #iter raycast 1

particle minecraft:block{block_state: oxidized_copper} ~ ~ ~ .5 .5 .5 0 4 normal
particle minecraft:sonic_boom ~ ~ ~ .5 .5 .5 0 1 normal

execute \
    if entity @s[scores={recess.timer=..15}]
    as @a[distance=..1,scores={recess.damage_timer=..0}]
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
