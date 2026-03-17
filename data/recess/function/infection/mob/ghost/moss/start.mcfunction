#> ghost throws moss
# called from ../tick
# @s: ghost

# reset moss timer (3-5s)
execute store result score @s infection.ghost_moss_timer run random value 65..140

# create motion vector (outputs to infection:temp motion)
execute at @p[distance=..16] run function recess:dist
data modify storage infection:temp motion set value {up: 0, forward: 0}

## max dist calc
scoreboard players set #min_magnitude const 2000
scoreboard players set #max_magnitude const 16000
scoreboard players operation $out temp > #min_magnitude const
scoreboard players operation $out temp < #max_magnitude const
execute store result storage infection:temp motion.forward double .001 run scoreboard players get $out temp

scoreboard players operation $out temp *= $100 const
scoreboard players operation $out temp /= $4 const
execute store result storage infection:temp motion.up double .00001 run scoreboard players get $out temp

execute facing entity @p[distance=..16] eyes positioned 0.0 0.0 0.0 summon marker run function recess:infection/mob/ghost/moss/motion_vector with storage infection:temp motion
data modify storage infection:temp ghost_uuid set from entity @s UUID

# create moss (can't be picked up, dies after 10s automatically)
execute anchored eyes run summon item ~ ~ ~ { \
    Item: {id: "pale_moss_block", components: {item_model: "minecraft:air"}}, \
    PickupDelay: 32767, \
    Age: 5800, \
    Tags:["infection.ghost_moss_item_init", "infection.ghost_moss_item"] \
}

execute as @n[type=item,tag=infection.ghost_moss_item_init] at @s run function recess:infection/mob/ghost/moss/init
