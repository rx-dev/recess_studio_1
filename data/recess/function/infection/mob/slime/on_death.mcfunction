execute if entity @s[tag=infection.size0] run return run kill @s

data modify entity @s item.id set value "minecraft:air"
schedule function recess:infection/mob/slime/find_inner_slimes 1t replace
