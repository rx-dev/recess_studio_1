# find linked player
scoreboard players operation #compare_id pets.id = @s pets.id
execute as @a if score @s pets.id = #compare_id pets.id run tag @s add pets.owner
execute as @e[tag=pets.visual] if score @s pets.id = #compare_id pets.id run tag @s add pets.pet

# tp pet
tp @e[tag=pets.pet] @s
tag @e remove pets.pet

# set target of the pet
data modify storage temp wander_target set value [I;0,0,0]
execute store result storage temp wander_target[0] int 1 run data get entity @p[tag=pets.owner] Pos[0]
execute store result storage temp wander_target[1] int 1 run data get entity @p[tag=pets.owner] Pos[1]
execute store result storage temp wander_target[2] int 1 run data get entity @p[tag=pets.owner] Pos[2]
data modify entity @s wander_target set from storage temp wander_target
tag @a remove pets.owner

# reset despawn delay
data merge entity @s {DespawnDelay:2147483647,Offers:{Recipes:[]}}

# remove milk
item replace entity @s weapon.mainhand with air
effect give @s minecraft:invisibility infinite 1 true
