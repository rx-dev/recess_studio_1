scoreboard players remove @s[scores={infection.spawn_timer=1..}] infection.spawn_timer 1

execute unless score @s infection.spawn_timer matches 1.. run function recess:infection/mob/attempt_spawn
