# data remove storage recess:data input
# execute store result storage recess:data input.charge int 1 run scoreboard players get @s charge

# make ray
tag @s add self
scoreboard players set #hit raycast 0
scoreboard players set #iter raycast 0

execute \
    anchored eyes \
    facing entity @n[type=marker,tag=flux_end] eyes \
    run function recess:gems/flux/ray/iter

tag @s remove self

# scoreboard players set @s charge 0 