#> from ./on_use (via ../raycast/start)

execute store result score #blocks_filled temp run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 moss_block replace minecraft:pale_moss_block
execute store result score #killed_infector temp run kill @n[type=marker,tag=recess.infector,distance=..3]
execute store result score #killed_infection_start temp run kill @n[type=marker,tag=recess.infection_start,distance=..1]
kill @s

scoreboard players operation $INFECTION_STATIC_STEPS infection.state += #blocks_filled temp

scoreboard players operation #killed_infector temp *= #25 const
scoreboard players operation #killed_infection_start temp *= #100 const

scoreboard players operation $INFECTION_STATIC_STEPS infection.state += #killed_infector temp
scoreboard players operation $INFECTION_STATIC_STEPS infection.state += #killed_infection_start temp
