execute \
    if score $BLOCKS_INFECTED_LAST infection.state = $BLOCKS_INFECTED infection.state \
    run scoreboard players add $INFECTION_STATIC_STEPS infection.state 1

execute \
    unless score $BLOCKS_INFECTED_LAST infection.state = $BLOCKS_INFECTED infection.state \
    run scoreboard players set $INFECTION_STATIC_STEPS infection.state 0
    
execute \
    if score $INFECTION_STATIC_STEPS infection.state matches 1000.. \
    run function recess:infection/clock/die

scoreboard players operation $BLOCKS_INFECTED_LAST infection.state = $BLOCKS_INFECTED infection.state

execute \
    if score $ACTIVE infection.state matches 1 \
    if entity @e[type=marker,tag=recess.infection_start] \
    run schedule function recess:infection/clock/main 1t replace

execute \
    if predicate {"condition": "random_chance", "chance": 0.4} \
    run particle minecraft:warped_spore ~ ~.6 ~ .5 .5 .5 .2 1 normal

execute \
    as @e[type=marker,tag=recess.infection_start] \
    at @s \
    if predicate {"condition": "random_chance", "chance": 0.85} \
    run summon marker ~ ~ ~ {Tags: ["recess.infector"]}

execute as @e[type=marker,tag=recess.infector] at @s run function recess:infection/clock/walk

execute \
    at @e[type=marker,tag=recess.infector,limit=5,sort=random] \
    if predicate {"condition": "random_chance", "chance": 0.01} \
    run function recess:infection/mob/spawn

execute as @e[tag=infection.mob] at @s run function recess:infection/mob/tick
