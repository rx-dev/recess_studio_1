execute at @n[type=marker,tag=recess.infection_start] run setblock ~ ~ ~ pale_moss_block
execute at @n[type=marker,tag=recess.infection_start] run setblock ~ ~1 ~ pale_moss_block
execute at @n[type=marker,tag=recess.infection_start] run setblock ~ ~-1 ~ pale_moss_block
kill @n[type=marker,tag=recess.infection_start]
summon marker ~ ~ ~ {Tags: ["recess.infection_start"]}
setblock ~ ~1 ~ pale_oak_log
setblock ~ ~ ~ minecraft:creaking_heart[creaking_heart_state=awake] strict
setblock ~ ~-1 ~ pale_oak_log
