#> from ./on_use

# set on fire
execute as @n[distance=..0.1,type=!player] run function recess:infection/item/flamethrower/set_entity_on_fire

# fire dmg (every few ticks)
execute unless score @s infection.in_flamethrower matches 1.. run damage @n[distance=..0.1] 2 in_fire
scoreboard players set @s[scores={infection.in_flamethrower=0}] infection.in_flamethrower 10
scoreboard players remove @s[scores={infection.in_flamethrower=1..}] infection.in_flamethrower 1

# av
particle small_flame ~ ~ ~ .1 .1 .1 .2 1
execute if predicate {condition: "random_chance", chance: 0.3} run particle flame ~ ~ ~ .1 .1 .1 .1 1

playsound minecraft:block.fire.ambient player @a ~ ~ ~ .4 2
execute if predicate {condition: "random_chance", chance: 0.5} run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ .7 2
execute if predicate {condition: "random_chance", chance: 0.1} run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ .9 .2
execute if predicate {condition: "random_chance", chance: 0.3} run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1.2 1
