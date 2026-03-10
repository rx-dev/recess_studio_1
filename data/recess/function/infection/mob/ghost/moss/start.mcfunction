#> ghost throws moss
# called from ../tick
# @s: ghost

# reset moss timer (3-5s)
execute store result score @s infection.ghost_moss_timer run random value 60..100

# create motion vector (outputs to infection:temp motion)
execute facing entity @p[gamemode=!creative] eyes positioned 0.0 0.0 0.0 summon marker run function recess:infection/mob/ghost/moss/motion_vector {up: 1, forward: 3}

tellraw @a {storage: "infection:temp", nbt: "motion"}

# create moss (can't be picked up, dies after 10s automatically)
execute anchored eyes run summon item ~ ~ ~ { \
    Item: {id: "pale_moss_block", components: {item_model: "minecraft:air"}}, \
    PickupDelay: 32767, \
    Age: 5800, \
    Tags:["infection.ghost_moss_item_init", "infection.ghost_moss_item"] \
}

execute as @n[type=item,tag=infection.ghost_moss_item_init] at @s run function recess:infection/mob/ghost/moss/init
