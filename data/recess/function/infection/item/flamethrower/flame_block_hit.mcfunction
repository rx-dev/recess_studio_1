#> from ./on_use (via ../raycast/start)

execute store result score #blocks_filled temp run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 moss_block replace minecraft:pale_moss_block
kill @n[type=marker,tag=recess.infector,distance=..3]
kill @n[type=marker,tag=recess.infection_start,distance=..1]
kill @s

scoreboard players operation $INFECTION_STATIC_STEPS infection.state += #blocks_filled temp
