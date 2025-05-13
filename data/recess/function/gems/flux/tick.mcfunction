execute as @e[type=marker,tag=flux_start] at @s run function recess:gems/flux/entity
execute \
    as @a \
    if items entity @s weapon.* minecraft:echo_shard[minecraft:custom_data~{gem: 'flux'}] \
    at @s \
    run function recess:gems/flux/player

scoreboard players add @e[type=marker,tag=flux] recess.timer 1
kill @e[type=marker,tag=flux,scores={recess.timer=1000..}]

scoreboard players remove @a[scores={recess.timer=1..}] recess.timer 1
scoreboard players remove @a[scores={recess.damage_timer=1..}] recess.damage_timer 1
