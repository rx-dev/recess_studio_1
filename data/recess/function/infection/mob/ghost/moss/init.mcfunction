#> inits the moss
# called from ./start
# @s: item

# display
execute summon item_display run tag @s add infection.ghost_moss_display_init

# set the motion to our vector
data modify entity @s Motion set from storage infection:temp motion

# make display look and ride correctly
data merge entity @n[type=item_display,tag=infection.ghost_moss_display_init] {item: {id: "pale_moss_block"}}
ride @n[type=item_display,tag=infection.ghost_moss_display_init] mount @s

# setup tags
tag @n[type=item_display,tag=infection.ghost_moss_display_init] add infection.ghost_moss_display
tag @n[type=item_display,tag=infection.ghost_moss_display_init] add infection.mob

# cleanup
tag @n[type=item_display,tag=infection.ghost_moss_display_init] remove infection.ghost_moss_display_init
tag @s remove infection.ghost_moss_init
