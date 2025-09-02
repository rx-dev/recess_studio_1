execute if entity @s[type=zombie,tag=infection.zombie] run function recess:infection/mob/zombie/tick
execute if entity @s[type=item_display,tag=infection.slime_display] run function recess:infection/mob/slime/tick_display
execute if entity @s[type=skeleton,tag=infection.skeleton] run function recess:infection/mob/skeleton/tick
execute if entity @s[type=marker,tag=infection.zombie_cough] run function recess:infection/mob/zombie/cough_tick
