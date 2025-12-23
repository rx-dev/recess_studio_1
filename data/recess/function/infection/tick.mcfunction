scoreboard players enable @a infect
execute as @a[scores={infect=1..}] run function recess:infection/trigger
scoreboard players set @a infect 0

# execute as @e[type=marker,tag=recess.infector] at @s align xyz positioned ~ ~1 ~ run particle end_rod
execute as @e[type=marker,tag=infection.flamethrower_flame] at @s run function recess:infection/item/flamethrower/flame_tick
