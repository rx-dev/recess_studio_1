#> from ./flames

execute store result scoreboard $fire_duration recess.temp run data get entity @s Fire
scoreboard players add $fire_duration recess.temp 10
exercute store result entity @s Fire short 1 run scoreboard players get $fire_duration recess.temp
