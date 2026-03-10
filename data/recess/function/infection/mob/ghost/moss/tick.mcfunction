#> ticks the moss display
# called from ../../tick
# @s: item_display

# kill item once it's on the ground
execute on vehicle if data entity @s {OnGround: 1b} run kill @s

# if item exists, short circuit
execute on vehicle run return 1

# this code executes if the item doesn't exist
kill @s
summon falling_block ~ ~ ~ {BlockState: {Name: "pale_moss_block"}}
