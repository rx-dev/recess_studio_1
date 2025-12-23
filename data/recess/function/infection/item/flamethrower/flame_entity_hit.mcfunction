#> from ./on_use (via ../raycast/start)

# set on fire
execute if entity @s[type=!player] run function recess:infection/item/flamethrower/set_entity_on_fire

# fire dmg (every few ticks)
execute unless score @s infection.in_flamethrower matches 1.. run damage @s 2 in_fire
scoreboard players set @s[scores={infection.in_flamethrower=0}] infection.in_flamethrower 10
scoreboard players remove @s[scores={infection.in_flamethrower=1..}] infection.in_flamethrower 1
