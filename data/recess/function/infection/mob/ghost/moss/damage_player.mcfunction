#> damages nearby player
# called from ./tick
# @s: item_display

execute on vehicle on origin run tag @s add infection.ghost_thrower
execute as @a[distance=..2] run damage @s 5 minecraft:falling_block by @n[type=wandering_trader,tag=infection.ghost_thrower]
tag @e remove infection.ghost_thrower

# av
particle minecraft:cloud ~ ~ ~ 1.5 2 1.5 0 15 normal
playsound minecraft:block.cherry_wood.fall block @a ~ ~ ~ 1.5 .5

# clean up (we don't want to summon a falling block)
execute on vehicle run kill @s
kill @s
