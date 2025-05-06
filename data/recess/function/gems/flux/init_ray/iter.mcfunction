scoreboard players add #iter raycast 1

particle minecraft:block{block_state: oxidized_copper} ~ ~ ~ .1 .1 .1 0 3 normal

execute \
    positioned ~-0.05 ~-0.05 ~-0.05 \
    as @e[tag=!self,tag=!ray_entity,dx=0] \
    run function recess:gems/flux/init_ray/check_hit

execute \
    unless block ~ ~ ~ air \
    if score #hit raycast matches 0 \
    if score #iter raycast matches ..200 \
    summon marker \
    run function recess:gems/flux/init_ray/init_marker

execute \
    if score #iter raycast matches 201.. \
    summon marker \
    run function recess:gems/flux/init_ray/init_marker

execute \
    if block ~ ~ ~ air \
    if score #hit raycast matches 0 \
    if score #iter raycast matches ..200 \
    positioned ^ ^ ^0.1 \
    run function recess:gems/flux/init_ray/iter
