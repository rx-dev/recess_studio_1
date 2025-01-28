item replace entity @s weapon.mainhand with air

# find linked player
scoreboard players operation #compare_id pets.id = @s pets.id
execute as @a if score @s pets.id = #compare_id pets.id run tag @s add pets.owner

# set target of the pet
data modify entity @s wander_target set from entity @p[tag=pets.owner] Pos
tag @a remove pets.owner

# reset despawn delay
data modify entity @s DespawnDelay set value 100000

# remove milk
item replace entity @s weapon.mainhand with air
effect give @s minecraft:invisibility infinite 1 true
