#> from ../tick

scoreboard players add @s infection.flame_lifetime 1
kill @s[scores={infection.flame_lifetime=20..}]

rotate ~ ~-1
function recess:raycast/start { \
    steps: 10, \
    step_size: 0.1, \
    on_step: "infection:item/flamethrower/flame_step", \
    on_block_hit: "infection:item/flamethrower/flame_block_hit", \
    on_entity_hit: "infection:item/flamethrower/flame_entity_hit", \
    entity_selector_args: "type=!marker,tag=!infection.flamethrower_flame" \
}
