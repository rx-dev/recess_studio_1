#> from ./flames

execute store result score $fire_duration temp run data get entity @s Fire
scoreboard players add $fire_duration temp 10
exercute store result entity @s Fire short 1 run scoreboard players get $fire_duration temp
