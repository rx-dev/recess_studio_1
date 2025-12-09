#> from ./on_use

# set on fire
execute as @e[distance=..1,type=!player] run function recess:infection/item/flamethrower/set_entity_on_fire

# fire dmg (every few ticks)
execute as @e[distance=..1,tag=!self] unless score @s infection.in_flamethrower matches 1.. run damage @s 2 in_fire
execute as @e[distance=..1,tag=!self] run scoreboard players set @s[scores={infection.in_flamethrower=0}] infection.in_flamethrower 10
execute as @e[distance=..1,tag=!self] run scoreboard players remove @s[scores={infection.in_flamethrower=1..}] infection.in_flamethrower 1

# av
particle small_flame ~ ~ ~ .15 .025 .15 0 5
execute if predicate {condition: "random_chance", chance: 0.25} run particle small_flame ~ ~ ~ .1 .1 .1 .2 2
execute if predicate {condition: "random_chance", chance: 0.4} run particle flame ~ ~ ~ 0 0 0 .1 1
execute if predicate {condition: "random_chance", chance: 0.3} run particle flame ~ ~ ~ .3 .3 .3 0 1
execute if predicate {condition: "random_chance", chance: 0.75} run particle flame ~ ~ ~ 0 0 0 0 1

playsound minecraft:block.fire.ambient player @a ~ ~ ~ .4 2
execute if predicate {condition: "random_chance", chance: 0.5} run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ .4 1.5
execute if predicate {condition: "random_chance", chance: 0.1} run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ .6 .1
execute if predicate {condition: "random_chance", chance: 0.3} run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ .87 1

execute if block ~ ~-1 ~ minecraft:pale_moss_block run setblock ~ ~-1 ~ minecraft:moss_block replace
