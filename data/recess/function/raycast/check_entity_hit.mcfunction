$execute \
    if score #hit raycast matches 0 \
    positioned ~-0.9 ~-0.9 ~-0.9 \
    if entity @s[dx=0] \
    positioned ~0.95 ~0.95 ~0.95 \
    run function recess:raycast/hit {function: "$(on_entity_hit)"}
