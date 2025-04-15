scoreboard objectives add pets.id dummy
scoreboard objectives add pets.prev_x dummy
scoreboard objectives add pets.prev_y dummy
scoreboard objectives add pets.prev_z dummy
scoreboard objectives add temp dummy

execute unless score $current.id pets.id matches 0.. run scoreboard players set $current.id pets.id 0

team add no_collision
team modify no_collision collisionRule never
