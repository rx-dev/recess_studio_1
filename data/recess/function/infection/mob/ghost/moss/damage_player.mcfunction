#> damages nearby player
# called from ./tick
# @s: item_display

execute on vehicle on origin run tag @s add infection.ghost_thrower
execute as @a[distance=..1] run damage @s 5 minecraft:falling_block by @n[type=wandering_villager,tag=infection.ghost_thrower]
tag @e remove infection.ghost_thrower

# clean up (we don't want to summon a falling block)
execute on vehicle run kill @s
kill @s
