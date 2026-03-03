# @s: wandering trader (ghost brain)

# find new wander target every second
scoreboard players add @s infection.ghost_movement_timer 1
execute if entity @s[scores={infection.ghost_movement_timer=50..}] run data modify entity @s wander_target set from entity @p[distance=..12]
scoreboard players set @s[scores={infection.ghost_movement_timer=50..}] infection.ghost_movement_timer 0

# spam tp
scoreboard players operation #id temp = @s infection.ghost_id
execute rotated as @s as @e[type=mannequin, tag=infection.ghost] if score @s infection.ghost_id = #id temp run return run tp @s ^ ^ ^ ~ ~

# if we fail to tp, kill villager
tp @s ~ ~-100000 ~
