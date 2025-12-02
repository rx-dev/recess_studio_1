advancement revoke @s only recess:infection/use_flamethrower

# figure out if we are mainhand or offhand
execute \
    store result score $mainhand temp \
    if items entity @s weapon.mainhand *[custom_data~{item: 'flamethrower'}]

# if we are sneaking, try to refill
execute \
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


# spew flames!
execute anchored eyes positioned ^ ^ ^2 run function recess:infection/item/flamethrower/flames

# durability loss
execute \
    if score $mainhand temp matches 1 \
    item modify entity @s weapon.mainhand {function: "set_damage", damage: -1, add: 1b}

execute \
    unless score $mainhand temp matches 1 \
    item modify entity @s weapon.offhand {function: "set_damage", damage: -1, add: 1b}
