# @s: marker for ghost trail

# av
particle minecraft:dust_plume ~ ~ ~ 0 0 0 0 1 normal

scoreboard players add @s infection.ghost_trail_timer 1

# every 5 ticks, damage player
scoreboard players set #damage_rate temp 10
scoreboard players operation #mod temp = @s infection.ghost_trail_timer
scoreboard players operation #mod temp %= #damage_rate temp
execute if score #mod temp matches 0 run effect give @e[distance=..1] minecraft:wither 1 0 true

# death
execute if entity @s[scores={infection.ghost_trail_timer=50..}] run kill @s
