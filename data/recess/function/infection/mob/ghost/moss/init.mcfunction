#> inits the moss
# called from ./start
# @s: item

# display
execute summon item_display run tag @s add infection.ghost_moss_display_init

# set the motion to our vector
data modify entity @s Motion set from storage infection:temp motion
data modify entity @s Owner set from storage infection:temp ghost_uuid
data modify entity @s Thrower set from storage infection:temp ghost_uuid

# make display look and ride correctly
ride @n[type=item_display,tag=infection.ghost_moss_display_init] mount @s
execute on passengers run data modify entity @s item set value {id: "pale_moss_block"}
execute on passengers run data modify entity @s transformation.scale set value [2.0f,2.0f,2.0f]

# setup tags
execute on passengers run tag @s add infection.ghost_moss_display
execute on passengers run tag @s add infection.mob

# cleanup
execute on passengers run tag @s remove infection.ghost_moss_display_init
tag @s remove infection.ghost_moss_init
