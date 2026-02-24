# @s: wandering trader (ghost brain)

# find new wander target every second
scoreboard players add @s infection.ghost_movement_timer 1
execute if entity @s[scores={infection.ghost_movement_timer=50..}] run data modify entity @s wander_target set from entity @p[distance=..12]
scoreboard players set @s[scores={infection.ghost_movement_timer=50..}] infection.ghost_movement_timer 0

# despawn if mannequin dies (return if we have a mannequin)
execute on passengers run return 1
tp @s ~ ~-100000 ~
