execute \
    if score $ACTIVE infection.state matches 1.. \
    as @a \
    at @s \
    if block ~ ~-1 ~ minecraft:pale_moss_block \
    run effect give @a minecraft:wither 2 1 true
