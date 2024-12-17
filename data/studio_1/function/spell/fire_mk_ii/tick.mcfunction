# @s: fireball

# movement
scoreboard players remove @s[scores={fire_ball_y_velocity=-100..}] fire_ball_y_velocity 4

data modify storage studio_1:data input set value {}
execute \
    store result storage studio_1:data input.y_velocity float 0.01 \
    run scoreboard players get @s fire_ball_y_velocity
function studio_1:spell/fire_mk_ii/move with storage studio_1:data input

# bounce
execute unless block ~ ~-0.05 ~ air run function studio_1:spell/fire_mk_ii/bounce

# particles
particle minecraft:flame

# disappear after 10 seconds
scoreboard players add @s fire_ball_timer 1
execute if score @s fire_ball_timer matches 100.. run kill @s
