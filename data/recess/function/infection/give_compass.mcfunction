#> called from ./tick as @s


scoreboard players set @s infection.joined_world 1

data modify storage infection:temp lodestone_tracker set value {target: {pos: [I;0,0,0], dimension: "overworld"}}
function recess:infection/locate
execute \
    store result storage infection:temp lodestone_tracker.target.pos[0] int 1 \
    run scoreboard players get #location_x value

execute \
    store result storage infection:temp lodestone_tracker.target.pos[2] int 1 \
    run scoreboard players get #location_z value

function recess:infection/give_compass/macro with storage infection:temp
