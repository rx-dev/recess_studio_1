execute as @e[type=marker,tag=flux_start] run function recess:gems/flux/entity

scoreboard players add @e[type=marker,tag=flux] recess.timer 1
kill @e[type=marker,tag=flux,scores={recess.timer=1000..}]
