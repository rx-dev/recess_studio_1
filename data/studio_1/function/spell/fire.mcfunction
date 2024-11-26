advancement revoke @s only studio_1:spell/use_fire

# quit if not enough mana
execute if score @s mana matches ..9 run return fail

# update mana and start charging
scoreboard players remove @s mana 10
scoreboard players add @s charge 1
tag @s add spell.charging

execute anchored eyes run particle minecraft:soul_fire_flame ^-0.2 ^ ^ 0.3 0.3 0.3 0.1 3
