execute \
    if score $ACTIVE infection.state matches 1 \
    if entity @e[type=marker,tag=recess.infection_start] \
    run schedule function recess:infection/clock/main 1t replace

execute \
    if predicate {"condition": "random_chance", "chance": 0.4} \
    run particle minecraft:warped_spore ~ ~ ~ .5 .5 .5 .2 1 normal

scoreboard players add @e[type=marker,tag=recess.infection_start] infection.timer 1

execute \
    if score @s infection.timer matches 4 \
    if predicate {"condition": "random_chance", "chance": 0.4} \
    at @e[type=marker,tag=recess.infection_start, limit=1] \
    run summon marker ~ ~ ~ {Tags: ["recess.infector"]}

execute as @e[type=marker,tag=recess.infector] at @s run function recess:infection/clock/walk

scoreboard players set @e[type=marker,tag=recess.infection_start,scores={infection.timer=10..}] infection.timer 0
