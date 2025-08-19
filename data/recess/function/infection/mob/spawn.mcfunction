execute store result score $random temp run random value 1..100

execute \
    if score $random temp 1..25 \
    run summon zombie run function recess:infection/mob/zombie/on_spawn

execute \
    if score $random temp 26..45 \
    run summon skeleton run function recess:infection/mob/skeleton/on_spawn

execute \
    if score $random temp 46..60 \
    run summon cave_spider

execute \
    if score $random temp 61..80 \
    run summon creeper run function recess:infection/mob/creeper/on_spawn

execute \
    if score $random temp 81..100 \
    run summon slime run function recess:infection/mob/slime/on_spawn
