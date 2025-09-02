tag @s add infection.slime
tag @s remove infection.mob_spawned

execute store result score $random temp run random value 1..5

execute \
    if score $random temp matches 1..3 \
    run data merge entity @s {Size:0}

execute \
    if score $random temp matches 4..5 \
    run data merge entity @s {Size:1}

execute \
    if score $random temp matches 1..3 \
    on passengers \
    run data merge entity @s {transformation: { \
        left_rotation: [0f,0f,0f,1f], \
        right_rotation: [0f,0f,0f,1f], \
        translation: [0f,-.125f,0f], \
        scale: [0.75f,0.75f,0.75f] \
    }}

execute \
    if score $random temp matches 4..5 \
    on passengers \
    run data merge entity @s {transformation: { \
        left_rotation: [0f,0f,0f,1f], \
        right_rotation: [0f,0f,0f,1f], \
        translation: [0f,-0.25f,0f], \
        scale: [1.5f,1.5f,1.5f] \
    }}
    

spreadplayers ~-5 ~5 1 2 false @s
