execute on passenger run return 1
execute if entity @s[nbt={Size:0,active_effects:[{id:"invisibility"}]}] at @s run function recess:infection/mob/slime/fix_slime
execute if entity @s[nbt={Size:1,active_effects:[{id:"invisibility"}]}] at @s run function recess:infection/mob/slime/fix_slime
