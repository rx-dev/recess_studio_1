#> creates a motion vector from tp cmd
# called from ./start
# @s: marker

$tp ^ ^ ^$(forward)

data modify storage infection:temp motion set from entity @s Pos

kill @s
