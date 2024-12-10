data remove storage studio_1:data input
execute store result storage studio_1:data input.charge int 1 run scoreboard players get @s charge

# make ray
tag @s add self
scoreboard players set #hit raycast 0
scoreboard players set #iter raycast 0
execute anchored eyes positioned ^-0.2 ^ ^ run function studio_1:spell/fire/ray/iter with storage studio_1:data input
tag @s remove self

scoreboard players set @s charge 0
data remove storage studio_1:data input
