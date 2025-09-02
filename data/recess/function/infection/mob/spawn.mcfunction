execute store result score $random temp run random value 1..100

execute \
    if score $random temp matches 1..25 \
    summon zombie run function recess:infection/mob/zombie/on_spawn

# execute \
#     if score $random temp 26..45 \
#     run summon skeleton run function recess:infection/mob/skeleton/on_spawn

# execute \
#     if score $random temp 46..60 \
#     run summon cave_spider

# execute \
#     if score $random temp 61..80 \
#     run summon creeper run function recess:infection/mob/creeper/on_spawn

execute \
    if score $random temp matches 81..100 \
    run summon slime ~ ~ ~ { \
        Passengers: [ \
            {id:"minecraft:item_display",item:{id:"minecraft:pale_moss_block"}} \
        ], \
        Size: 0, \
        Tags: ["infection.mob", "infection.slime", "infection.mob_spawned"] \
    }
execute \
    if score $random temp matches 81..100 \
    as @n[type=slime,tag=infection.mob_spawned] \
    run function recess:infection/mob/slime/on_spawn
