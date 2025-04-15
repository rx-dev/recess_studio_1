# tag current trader
tag @s add pets.current
scoreboard players set #found_linked_pet temp 0

# find linked player
scoreboard players operation #compare_id pets.id = @s pets.id
execute as @a if score @s pets.id = #compare_id pets.id run tag @s add pets.owner
execute as @e[tag=pets.visual] if score @s pets.id = #compare_id pets.id run function pets:process/linked_pet

# kill if not found
execute unless score #found_linked_pet temp matches 1 run tp @s ~ ~-100000 ~

# set target of the pet
data modify storage temp wander_target set value [I;0,0,0]
execute store result storage temp wander_target[0] int 1 run data get entity @p[tag=pets.owner] Pos[0]
execute store result storage temp wander_target[1] int 1 run data get entity @p[tag=pets.owner] Pos[1]
execute store result storage temp wander_target[2] int 1 run data get entity @p[tag=pets.owner] Pos[2]
data modify entity @s wander_target set from storage temp wander_target

# reset despawn delay
data merge entity @s {DespawnDelay:2147483647,Offers:{Recipes:[]}}

# remove milk
item replace entity @s weapon.mainhand with air
effect give @s minecraft:invisibility infinite 1 true

# explode nearby creepers
data modify entity @n[type=creeper,distance=..3] ignited set value 1s

# cleanup
tag @a remove pets.owner
tag @s remove pets.current
