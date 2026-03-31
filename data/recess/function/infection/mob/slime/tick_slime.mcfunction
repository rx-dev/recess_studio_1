execute on passengers run return 1
execute if entity @s[nbt={Size:0,active_effects:[{id:"minecraft:invisibility"}]}] at @s run function recess:infection/mob/slime/fix_slime
execute if entity @s[nbt={Size:1,active_effects:[{id:"minecraft:invisibility"}]}] at @s run function recess:infection/mob/slime/fix_slime
