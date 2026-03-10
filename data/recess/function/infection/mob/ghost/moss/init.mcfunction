#> inits the moss
# called from ./start
# @s: item

# display
execute summon item_display run tag @s add infection.ghost_moss_display_init

# set the motion to our vector
data modify entity @s Motion set from storage infection:temp motion
data modify entity @s transformation set value {scale:[2.0f,2.0f,2.0f]}
data modify entity @s Owner set from storage infection:temp ghost_uuid
data modify entity @s Thrower set from storage infection:temp ghost_uuid

# make display look and ride correctly
data merge entity @n[type=item_display,tag=infection.ghost_moss_display_init] {item: {id: "pale_moss_block"}}
ride @n[type=item_display,tag=infection.ghost_moss_display_init] mount @s

# setup tags
tag @n[type=item_display,tag=infection.ghost_moss_display_init] add infection.ghost_moss_display
tag @n[type=item_display,tag=infection.ghost_moss_display_init] add infection.mob

# cleanup
tag @n[type=item_display,tag=infection.ghost_moss_display_init] remove infection.ghost_moss_display_init
tag @s remove infection.ghost_moss_init
