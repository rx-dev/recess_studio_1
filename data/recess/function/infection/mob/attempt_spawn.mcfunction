# @s: player

# between 16s to 32s
execute summon marker store success score $success temp run function recess:infection/mob/attempt_spawn_pack

# shorten cycle if we fail to spawn a pack in the current cycle
execute if score $success temp matches 0 store result score @s infection.spawn_timer run random value 80..240
execute if score $success temp matches 1 store result score @s infection.spawn_timer run random value 360..640
