scoreboard players reset @s ice_wand

scoreboard players set #hit raycast 0
scoreboard players set #iter raycast 0

tag @s add ray_entity
execute at @s anchored eyes run function studio_1:ice_wand/cast
tag @s remove ray_entity
