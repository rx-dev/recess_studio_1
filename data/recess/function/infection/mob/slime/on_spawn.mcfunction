tag @s add infection.slime
tag @s add infection.mob

$data modify entity @s Size set value $(size)

execute if data entity @s {Size:3} run summon item_display ~ ~ ~ { \
    item:{id:"minecraft:pale_moss_block"}, \
    Tags: ["infection.slime_display", "infection.mob", "infection.size3", "infection.new_slime_display"], \
    transformation: { \
        left_rotation: [0f,0f,0f,1f], \
        right_rotation: [0f,0f,0f,1f], \
        translation: [0f,-0.75f,0f], \
        scale: [2.5f,2.5f,2.5f] \
    }}

execute if data entity @s {Size:2} run summon item_display ~ ~ ~ { \
    item:{id:"minecraft:pale_moss_block"}, \
    Tags: ["infection.slime_display", "infection.mob", "infection.size2", "infection.new_slime_display"], \
    transformation: { \
        left_rotation: [0f,0f,0f,1f], \
        right_rotation: [0f,0f,0f,1f], \
        translation: [0f,-0.5f,0f], \
        scale: [2f,2f,2f] \
    }}

execute if data entity @s {Size:1} run summon item_display ~ ~ ~ { \
    item:{id:"minecraft:pale_moss_block"}, \
    Tags: ["infection.slime_display", "infection.mob", "infection.size1", "infection.new_slime_display"], \
    transformation: { \
        left_rotation: [0f,0f,0f,1f], \
        right_rotation: [0f,0f,0f,1f], \
        translation: [0f,-0.25f,0f], \
        scale: [1.5f,1.5f,1.5f] \
    }}


execute if data entity @s {Size:0} run summon item_display ~ ~ ~ { \
    item:{id:"minecraft:pale_moss_block"}, \
    Tags: ["infection.slime_display", "infection.mob", "infection.size0", "infection.new_slime_display"], \
    transformation: { \
        left_rotation: [0f,0f,0f,1f], \
        right_rotation: [0f,0f,0f,1f], \
        translation: [0f,-.125f,0f], \
        scale: [0.75f,0.75f,0.75f] \
    }}

ride @n[type=item_display,tag=infection.new_slime_display] mount @s
tag @e remove infection.new_slime_display

spreadplayers ~-5 ~5 1 2 false @s

effect give @s minecraft:invisibility infinite 1 true
