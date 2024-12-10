tag @s add spell.changed_spell

# detect whether or not ur holding the item
# if not, we should leave early
execute \
    unless items entity @s weapon.* *[custom_data~{spell: {type: "fire"}}] \
    unless items entity @s weapon.* *[custom_data~{spell: {type: "fire_mk_II"}}] \
    run return fail


# change the item
execute \
    if items entity @s weapon.mainhand *[custom_data~{spell: {type: "fire"}}] \
    run return run function studio_1:spell/change/to_fire_mk_ii
execute \
    if items entity @s weapon.offhand *[custom_data~{spell: {type: "fire"}}] \
    run return run function studio_1:spell/change/to_fire_mk_ii

# change the item
execute \
    if items entity @s weapon.mainhand *[custom_data~{spell: {type: "fire_mk_II"}}] \
    run return run function studio_1:spell/change/to_fire
execute \
    if items entity @s weapon.offhand *[custom_data~{spell: {type: "fire_mk_II"}}] \
    run return run function studio_1:spell/change/to_fire
