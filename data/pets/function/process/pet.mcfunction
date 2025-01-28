# find linked player
scoreboard players operation #compare_id pets.id = @s pets.id
execute as @a if score @s pets.id = #compare_id pets.id run tag @s add pets.owner

# set target of the pet
execute store result entity @s wander_target[0] int 1 run data get entity @p[tag=pets.owner] Pos[0]
execute store result entity @s wander_target[1] int 1 run data get entity @p[tag=pets.owner] Pos[1]
execute store result entity @s wander_target[2] int 1 run data get entity @p[tag=pets.owner] Pos[2]
tag @a remove pets.owner

# reset despawn delay
data modify entity @s DespawnDelay set value 100000

# remove milk
item replace entity @s weapon.mainhand with air
effect give @s minecraft:invisibility infinite 1 true
