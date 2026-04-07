execute store result score $random temp run random value 1..100

execute \
    if score $random temp matches 1..25 \
    summon zombie run function recess:infection/mob/zombie/on_spawn

execute \
    if score $random temp matches 26..45 \
    summon skeleton run function recess:infection/mob/skeleton/on_spawn

execute \
    if score $random temp matches 46..60 \
    run function recess:beast_of_burden/spawn

execute \
    if score $random temp matches 61..74 \
    summon wandering_trader run function recess:infection/mob/ghost/on_spawn


execute \
    if score $random temp matches 75..87 \
    summon slime run function recess:infection/mob/slime/on_spawn {size:0}

execute \
    if score $random temp matches 87..95 \
    summon slime run function recess:infection/mob/slime/on_spawn {size:1}

execute \
    if score $random temp matches 95..98 \
    summon slime run function recess:infection/mob/slime/on_spawn {size:2}

execute \
    if score $random temp matches 98.. \
    summon slime run function recess:infection/mob/slime/on_spawn {size:3}
