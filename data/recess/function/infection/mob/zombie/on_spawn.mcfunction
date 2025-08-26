data merge entity @s {equipment:{head:{id:"pale_moss_block"}}}
execute store result storage recess:temp input.scale float .001 run random value 100..500
execute store result storage recess:temp input.speed float .001 run random value 100..300
execute store result storage recess:temp input.follow_range float 1 run random value 40..80
execute store result storage recess:temp input.max_hp float 1 run random value 5..20
function recess:infection/mob/set_attributes with storage recess:temp input
effect give @s minecraft:instant_damage 10 1 true
tag @s add infection.zombie
tag @s add infection.mob
spreadplayers ~-5 ~5 1 2 false @s
