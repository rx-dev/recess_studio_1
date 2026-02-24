# @s: marker

spreadplayers ~ ~ 12 48 false @s

execute at @s if block ~ ~-1 ~ minecraft:pale_moss_block run return run function recess:infection/mob/spawn_pack
return fail
