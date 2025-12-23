#> from ../tick

scoreboard players operation #id temp = @s recess.id
execute \
    as @a \
    if score @s recess.id matches #id temp \
    run tag @s add infection.ignore_flamethrower

scoreboard players add @s infection.flame_lifetime 1
kill @s[scores={infection.flame_lifetime=5..}]

rotate @s ~ ~2
function recess:raycast/start { \
    steps: 5, \
    step_size: 0.25, \
    on_step: "function recess:infection/item/flamethrower/flame_step", \
    on_block_hit: "function recess:infection/item/flamethrower/flame_block_hit", \
    on_entity_hit: "function recess:infection/item/flamethrower/flame_entity_hit", \
    entity_selector_args: ",type=!marker,tag=!infection.ignore_flamethrower" \
}

tag @a remove infection.ignore_flamethrower
