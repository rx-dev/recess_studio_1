# make ray
tag @s add self
scoreboard players set #hit raycast 0
scoreboard players set #iter raycast 0
execute anchored eyes positioned ^-0.2 ^ ^ run function studio_1:spell/ray/iter
tag @s remove self

scoreboard players set @s charge 0
