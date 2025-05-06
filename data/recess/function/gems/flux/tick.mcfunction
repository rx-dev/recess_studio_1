execute as @e[type=marker,tag=flux_start] at @s run function recess:gems/flux/entity

scoreboard players add @e[type=marker,tag=flux] recess.timer 1
kill @e[type=marker,tag=flux,scores={recess.timer=1000..}]

scoreboard players remove @a[scores={recess.timer=1..}] recess.timer 1
