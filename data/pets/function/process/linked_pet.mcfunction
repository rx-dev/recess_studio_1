# found linked pet
scoreboard players set #found_linked_pet temp 1

# interpolate
data modify entity @s[type=item_display] start_interpolation set value 0

# tp / rotate pet
tp @s ~ ~0.6 ~
rotate @s facing entity @p[tag=pets.owner] eyes
rotate @s[type=item_display] ~-180 ~

# detect if moving by checking previous locations
execute store result score #x temp run data get entity @s Pos[0] 10
execute store result score #y temp run data get entity @s Pos[1] 10
execute store result score #z temp run data get entity @s Pos[2] 10

tag @s remove pets.is_moving
execute unless score #x temp = @s pets.prev_x run tag @s add pets.is_moving
execute unless score #y temp = @s pets.prev_y run tag @s add pets.is_moving
execute unless score #z temp = @s pets.prev_z run tag @s add pets.is_moving

scoreboard players operation @s pets.prev_x = #x temp
scoreboard players operation @s pets.prev_y = #y temp
scoreboard players operation @s pets.prev_z = #z temp

# particles and sounds
execute at @s[tag=pets.is_moving] if predicate pets:40 run particle minecraft:poof ~ ~ ~ 0 0 0 0 1
execute at @s[tag=pets.is_moving] if predicate pets:40 run playsound minecraft:entity.chicken.step neutral @a ~ ~ ~ 0.4
