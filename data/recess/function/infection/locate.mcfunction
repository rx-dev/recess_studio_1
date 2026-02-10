# Create scoreboard objectives

scoreboard objectives add value dummy







# Set constants

scoreboard players set #2 value 2







# Set position values

scoreboard players set #point_1_x value 0
scoreboard players set #point_1_z value 0
scoreboard players set #point_2_x value 100
scoreboard players set #point_2_z value 0
scoreboard players set #point_3_x value 0
scoreboard players set #point_3_z value 100







# Get structure distances

execute store result score #point_1_distance value positioned ~000 ~ ~000 run locate structure infection:dungeon
execute store result score #point_2_distance value positioned ~100 ~ ~000 run locate structure infection:dungeon
execute store result score #point_3_distance value positioned ~000 ~ ~100 run locate structure infection:dungeon







# Compute cramer terms

scoreboard players operation #cramer_1 value = #point_1_x value
scoreboard players operation #cramer_1 value -= #point_2_x value

scoreboard players operation #cramer_2 value = #point_1_z value
scoreboard players operation #cramer_2 value -= #point_2_z value

scoreboard players operation #cramer_3 value = #point_1_x value
scoreboard players operation #cramer_3 value -= #point_3_x value

scoreboard players operation #cramer_4 value = #point_1_z value
scoreboard players operation #cramer_4 value -= #point_3_z value



scoreboard players operation #math_00 value = #point_1_x value
scoreboard players operation #math_00 value *= #point_1_x value
scoreboard players operation #cramer_5 value = #math_00 value

scoreboard players operation #math_00 value = #point_2_x value
scoreboard players operation #math_00 value *= #point_2_x value
scoreboard players operation #cramer_5 value -= #math_00 value

scoreboard players operation #math_00 value = #point_1_z value
scoreboard players operation #math_00 value *= #point_1_z value
scoreboard players operation #cramer_5 value += #math_00 value

scoreboard players operation #math_00 value = #point_2_z value
scoreboard players operation #math_00 value *= #point_2_z value
scoreboard players operation #cramer_5 value -= #math_00 value

scoreboard players operation #math_00 value = #point_1_distance value
scoreboard players operation #math_00 value *= #point_1_distance value
scoreboard players operation #cramer_5 value -= #math_00 value

scoreboard players operation #math_00 value = #point_2_distance value
scoreboard players operation #math_00 value *= #point_2_distance value
scoreboard players operation #cramer_5 value += #math_00 value



scoreboard players operation #math_00 value = #point_1_x value
scoreboard players operation #math_00 value *= #point_1_x value
scoreboard players operation #cramer_6 value = #math_00 value

scoreboard players operation #math_00 value = #point_3_x value
scoreboard players operation #math_00 value *= #point_3_x value
scoreboard players operation #cramer_6 value -= #math_00 value

scoreboard players operation #math_00 value = #point_1_z value
scoreboard players operation #math_00 value *= #point_1_z value
scoreboard players operation #cramer_6 value += #math_00 value

scoreboard players operation #math_00 value = #point_3_z value
scoreboard players operation #math_00 value *= #point_3_z value
scoreboard players operation #cramer_6 value -= #math_00 value

scoreboard players operation #math_00 value = #point_1_distance value
scoreboard players operation #math_00 value *= #point_1_distance value
scoreboard players operation #cramer_6 value -= #math_00 value

scoreboard players operation #math_00 value = #point_3_distance value
scoreboard players operation #math_00 value *= #point_3_distance value
scoreboard players operation #cramer_6 value += #math_00 value







# Compute denominator

scoreboard players operation #math_00 value = #cramer_1 value
scoreboard players operation #math_00 value *= #cramer_4 value
scoreboard players operation #math_01 value = #cramer_2 value
scoreboard players operation #math_01 value *= #cramer_3 value
scoreboard players operation #math_00 value -= #math_01 value
scoreboard players operation #math_00 value *= #2 value

scoreboard players operation #denominator value = #math_00 value







# Compute X numerator

scoreboard players operation #math_00 value = #cramer_5 value
scoreboard players operation #math_00 value *= #cramer_4 value
scoreboard players operation #math_01 value = #cramer_2 value
scoreboard players operation #math_01 value *= #cramer_6 value
scoreboard players operation #math_00 value -= #math_01 value

scoreboard players operation #numerator_x value = #math_00 value







# Compute Z numerator

scoreboard players operation #math_00 value = #cramer_1 value
scoreboard players operation #math_00 value *= #cramer_6 value
scoreboard players operation #math_01 value = #cramer_5 value
scoreboard players operation #math_01 value *= #cramer_3 value
scoreboard players operation #math_00 value -= #math_01 value

scoreboard players operation #numerator_z value = #math_00 value







# Compute final position

scoreboard players operation #location_x value = #numerator_x value
scoreboard players operation #location_x value /= #denominator value

scoreboard players operation #location_z value = #numerator_z value
scoreboard players operation #location_z value /= #denominator value

execute store result score #x value run data get entity @s Pos[0]
execute store result score #z value run data get entity @s Pos[2]

scoreboard players operation #location_x value += #x value
scoreboard players operation #location_z value += #z value





