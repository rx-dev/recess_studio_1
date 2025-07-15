scoreboard players enable @a infect
execute as @a[scores={infect=1..}] run function recess:infection/trigger
scoreboard players set @a infect 0

execute as @e[type=marker,tag=recess.infector] at @s run particle end_rod
