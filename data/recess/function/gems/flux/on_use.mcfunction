advancement revoke @s only recess:gems/use_flux

execute if score @s recess.timer matches 1.. run return -1

kill @e[type=marker,tag=flux]
execute anchored eyes positioned ~ ~1.6 ~ summon marker run function recess:gems/flux/setup_marker
execute anchored eyes run function recess:gems/flux/init_ray/create

scoreboard players set @s recess.timer 500
