execute store result score $random temp run random value 1..100

execute \
    if score $random temp matches 1..25 \
    summon zombie run function recess:infection/mob/zombie/on_spawn

execute \
    if score $random temp matches 26..45 \
    summon skeleton run function recess:infection/mob/skeleton/on_spawn

# execute \
#     if score $random temp matches 46..60 \
#     summon cave_spider

execute \
    if score $random temp matches 61..80 \
    summon wandering_trader run function recess:infection/mob/ghost/on_spawn


execute \
    if score $random temp matches 81..90 \
    summon slime run function recess:infection/mob/slime/on_spawn {size:0}

execute \
    if score $random temp matches 91..97 \
    summon slime run function recess:infection/mob/slime/on_spawn {size:1}

execute \
    if score $random temp matches 98.. \
    summon slime run function recess:infection/mob/slime/on_spawn {size:2}
