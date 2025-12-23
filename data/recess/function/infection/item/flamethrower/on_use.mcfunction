advancement revoke @s only recess:infection/use_flamethrower

tag @s add self

# figure out if we are mainhand or offhand
execute \
    store result score $mainhand temp \
    if items entity @s weapon.mainhand *[custom_data~{item: 'flamethrower'}]

# if we are sneaking, try to refill
execute \
    if score $mainhand temp matches 1 \
    if items entity @s weapon.offhand minecraft:lava_bucket \
    if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{sneak:1b}}}} \
    run return run function recess:infection/item/flamethrower/refill

# otherwise.. ensure we have fuel
execute \
    if score $mainhand temp matches 1 \
    if items entity @s weapon.mainhand *[damage~{durability:{max: 0}}] \
    run return run function recess:infection/item/flamethrower/empty

execute \
    unless score $mainhand temp matches 1 \
    if items entity @s weapon.offhand *[damage~{durability:{max: 0}}] \
    run return run function recess:infection/item/flamethrower/empty

data modify storage infection:temp input set value {}
execute store result storage infection:temp input.x double 0.002 run random value -400..400
execute store result storage infection:temp input.y double 0.002 run random value -400..400
execute store result storage infection:temp input.z double 0.002 run random value -400..400
execute store result storage infection:temp input.roll double 0.2 run random value -20..20
execute store result storage infection:temp input.pitch double 0.2 run random value -20..20
execute rotated as @s anchored eyes positioned ^ ^ ^0.5 summon marker run function recess:infection/item/flamethrower/init_flame with storage infection:temp input

# durability loss
execute \
    if entity @s[gamemode=!creative] \
    if score $mainhand temp matches 1 \
    if predicate {condition: "random_chance", chance: 0.25} \
    run item modify entity @s weapon.mainhand {function: "set_damage", damage: -.01, add: true}

execute \
    if entity @s[gamemode=!creative] \
    unless score $mainhand temp matches 1 \
    if predicate {condition: "random_chance", chance: 0.25} \
    run item modify entity @s weapon.offhand {function: "set_damage", damage: -.01, add: true}

tag @s remove self
