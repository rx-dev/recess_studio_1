# bounce

# setblock ~ ~ ~ fire keep 

# scoreboard players set #-1 fire_ball_y_velocity -1
# scoreboard players set #2 fire_ball_y_velocity 2

# scoreboard players operation @s fire_ball_y_velocity *= #-1 fire_ball_y_velocity
# scoreboard players operation @s fire_ball_y_velocity /= #2 fire_ball_y_velocity

scoreboard players add @s fire_ball_y_velocity 10
