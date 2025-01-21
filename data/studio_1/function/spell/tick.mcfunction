scoreboard players set @a[scores={charge=10..}] charge 9
execute \
    as @a[scores={charge=1..},tag=!spell.charging] \
    at @s \
    if items entity @s weapon.* *[minecraft:custom_data~{spell: {type: "fire"}}] \
    run function studio_1:spell/fire/ray/create

execute \
    as @a[scores={charge=1..},tag=!spell.charging] \
    at @s \
    if items entity @s weapon.* *[minecraft:custom_data~{spell: {type: "fire_mk_II"}}] \
    run function studio_1:spell/fire_mk_ii/create

tag @a[tag=!spell.charging] remove spell.changed_spell
tag @a remove spell.charging

execute as @e[type=marker, tag=fireball] at @s run function studio_1:spell/fire_mk_ii/tick
