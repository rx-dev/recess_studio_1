advancement revoke @s only studio_1:spell/use_fire

# if sneaking, change spell
execute \
    if predicate studio_1:is_sneaking \
    unless entity @s[tag=spell.changed_spell] \
    run function studio_1:spell/change_spell

# quit if not enough mana
execute if score @s mana matches ..9 run return fail

# update mana and start charging
scoreboard players remove @s mana 10
scoreboard players add @s charge 1
scoreboard players set @s[scores={charge=10..}] charge 9
tag @s add spell.charging

execute anchored eyes run particle minecraft:soul_fire_flame ^-0.2 ^ ^ 0.3 0.3 0.3 0.1 3

data remove storage studio_1:data input
execute store result storage studio_1:data input.charge int 1 run scoreboard players get @s charge
function studio_1:spell/fire/sound_macro with storage studio_1:data input
