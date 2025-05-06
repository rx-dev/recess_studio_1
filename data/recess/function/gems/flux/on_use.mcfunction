advancement revoke @s only recess:gems/use_flux

execute if score @s recess.timer matches 1.. run return -1

kill @e[type=marker,tag=flux]
execute anchored eyes summon marker run function recess:gems/flux/setup_marker
function recess:gems/flux/init_ray/create

scoreboard players set @s recess.timer 900