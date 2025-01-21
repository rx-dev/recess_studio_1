scoreboard objectives add pets.id dummy
execute unless score $current.id pets.id matches 0.. run scoreboard players set $current.id pets.id 0
