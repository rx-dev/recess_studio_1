#> from ../tick

scoreboard players add @s infection.flame_lifetime 1
kill @s[scores={infection.flame_lifetime=10..}]

rotate @s ~ ~2
function recess:raycast/start { \
    steps: 5, \
    step_size: 0.5, \
    on_step: "function recess:infection/item/flamethrower/flame_step", \
    on_block_hit: "function recess:infection/item/flamethrower/flame_block_hit", \
    on_entity_hit: "function recess:infection/item/flamethrower/flame_entity_hit", \
    entity_selector_args: ",type=!marker,tag=!infection.flamethrower_flame" \
}
