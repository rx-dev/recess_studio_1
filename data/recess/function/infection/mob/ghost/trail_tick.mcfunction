# @s: marker for ghost trail

scoreboard players add @s infection.ghost_trail_timer 1

# every 5 ticks, damage player
scoreboard players set #damage_rate temp 4
scoreboard players operation #mod temp = @s infection.ghost_trail_timer
scoreboard players operation #mod temp %= #damage_rate temp
execute if score #mod temp matches 0 run particle minecraft:dust_plume ~ ~ ~ 0 0 0 0 1 normal
execute if score #mod temp matches 0 run effect give @e[distance=..1] minecraft:wither 2 0 true

# death
execute if entity @s[scores={infection.ghost_trail_timer=40..}] run kill @s
