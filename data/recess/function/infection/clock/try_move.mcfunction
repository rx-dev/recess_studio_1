# attempt to move if closer to a player

tag @p add infection.closest_player

execute as @n[type=marker,tag=recess.infection_start] store result score #orig_x temp run data get entity @s Pos[0] 1
execute as @n[type=marker,tag=recess.infection_start] store result score #orig_z temp run data get entity @s Pos[2] 1

execute store result score #new_x temp run data get entity @s Pos[0] 1
execute store result score #new_z temp run data get entity @s Pos[2] 1

execute store result score #closest_x temp run data get entity @p[tag=infection.closest_player] Pos[0] 1
execute store result score #closest_z temp run data get entity @p[tag=infection.closest_player] Pos[2] 1

# calculate distance to closest player from current position and from original position, and move if we're closer
## distance = ((x2 - x1)^2 + (z2 - z1)^2)

scoreboard players operation #dist_x temp = #closest_x temp
scoreboard players operation #dist_z temp = #closest_z temp
scoreboard players operation #dist_x temp -= #new_x temp
scoreboard players operation #dist_z temp -= #new_z temp
scoreboard players operation #dist_x temp *= #dist_x temp
scoreboard players operation #dist_z temp *= #dist_z temp
scoreboard players operation #new_dist temp = #dist_x temp
scoreboard players operation #new_dist temp += #dist_z temp

scoreboard players operation #dist_x temp = #closest_x temp
scoreboard players operation #dist_z temp = #closest_z temp
scoreboard players operation #dist_x temp -= #orig_x temp
scoreboard players operation #dist_z temp -= #orig_z temp
scoreboard players operation #dist_x temp *= #dist_x temp
scoreboard players operation #dist_z temp *= #dist_z temp
scoreboard players operation #orig_dist temp = #dist_x temp
scoreboard players operation #orig_dist temp += #dist_z temp

tag @a remove infection.closest_player

execute if score #new_dist temp < #orig_dist temp run return run function recess:infection/clock/move
execute if predicate {condition: "random_chance", chance: 0.1} run return run function recess:infection/clock/move
