execute as @a[scores={charge=1..},tag=!spell.charging] at @s run function studio_1:spell/fire/ray/create
tag @a[tag=!spell.charging] remove spell.changed_spell
tag @a remove spell.charging
