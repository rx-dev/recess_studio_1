# @s: wandering trader (ghost brain)

# invis please
effect give @s minecraft:invisibility infinite 1 true
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air

# find new wander target every second
scoreboard players add @s infection.ghost_movement_timer 1
execute if entity @s[scores={infection.ghost_movement_timer=50..}] run data modify entity @s wander_target set from entity @p[distance=..12] Pos
scoreboard players set @s[scores={infection.ghost_movement_timer=50..}] infection.ghost_movement_timer 0

# poison ghost trail
scoreboard players operation #mod temp = @s infection.ghost_movement_timer
scoreboard players set #5 temp 5
scoreboard players operation #mod temp %= #5 temp
execute if score #mod temp matches 0 run summon marker ~ ~.75 ~ {Tags:["infection.mob", "infection.ghost_trail"]}

# moss block throwing
scoreboard players remove @s[scores={infection.ghost_moss_timer=1..}] infection.ghost_moss_timer 1
execute if entity @s[scores={infection.ghost_moss_timer=0}] run function recess:infection/mob/ghost/moss/start

# spam tp
scoreboard players operation #id temp = @s infection.ghost_id
execute rotated as @s as @e[type=mannequin, tag=infection.ghost] if score @s infection.ghost_id = #id temp run return run tp @s ^ ^ ^ ~ ~

# if we fail to tp, kill villager
tp @s ~ ~-100000 ~
