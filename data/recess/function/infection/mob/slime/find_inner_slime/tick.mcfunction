execute if entity @s[tag=infection.size1] as @e[type=slime,distance=..6,nbt={Size:0,active_effects:[{id:"invisibility"}]}] at @s run function recess:infection/mob/slime/find_inner_slimes/fix
execute if entity @s[tag=infection.size2] as @e[type=slime,distance=..6,nbt={Size:1,active_effects:[{id:"invisibility"}]}] at @s run function recess:infection/mob/slime/find_inner_slimes/fix
schedule function recess:infection/mob/slime/find_inner_slimes 1t replace
