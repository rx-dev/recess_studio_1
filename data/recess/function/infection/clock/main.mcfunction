execute \
    if score $ACTIVE infection.state matches 1 \
    if entity @e[type=marker,tag=recess.infection_start] \
    run schedule function recess:infection/clock/main 1t replace

execute \
    if predicate {"condition": "random_chance", "chance": 0.4} \
    run particle minecraft:warped_spore ~ ~.6 ~ .5 .5 .5 .2 1 normal

execute \
    as @e[type=marker,tag=recess.infection_start] \
    if predicate {"condition": "random_chance", "chance": 0.5} \
    run summon marker ~ ~ ~ {Tags: ["recess.infector"]}

execute as @e[type=marker,tag=recess.infector] at @s run function recess:infection/clock/walk

execute \
    at @e[type=marker,tag=recess.infector,limit=5,sort=random] \
    if predicate {"condition": "random_chance", "chance": 0.005} \
    run function recess:infection/mob/spawn
