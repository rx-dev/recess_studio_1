execute \
    store result score @s recess.nearby_beasts \
    if entity @e[type=zombie,tag=recess.beast_of_burden,distance=..5]

data modify storage recess:main input set value {}
execute store result storage recess:main input.damage float 0.5 run scoreboard players get @s recess.nearby_beasts
execute store result storage recess:main input.raw int 1 run scoreboard players get @s recess.nearby_beasts

function recess:beast_of_burden/entity/set_damage with storage recess:main input

particle minecraft:enchanted_hit ~ ~ ~ 0.4 0 0.4 .1 10 normal
