data merge entity @s {equipment:{head:{id:"player_head", components: {profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDk2ZWI2M2EyYmU0MjE1M2Y0MGM4NTU0Y2QzMzY0MDYyYjY1ZjU3M2NhNDc1ZDIzZWM2YzMyZDBkMjg0ZTc2ZCJ9fX0="}]}}}}}
execute store result storage recess:temp input.scale float .001 run random value 100..200
execute store result storage recess:temp input.speed float .001 run random value 100..300
execute store result storage recess:temp input.follow_range float 1 run random value 40..80
execute store result storage recess:temp input.max_hp float 1 run random value 5..20
function recess:infection/mob/set_attributes with storage recess:temp input
effect give @s minecraft:instant_damage 10 1 true
tag @s add infection.zombie
spreadplayers ~-5 ~5 1 2 false @s
