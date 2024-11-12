say i'm waving
scoreboard players set @s wave 0

execute at @s run summon minecraft:skeleton ~ ~ ~ {\
    ArmorItems: [{id:"ice"},{},{},{}], \
    HandItems: [ \
        { \
            id:"carrot_on_the_stick", \
            components: { \
                item_model: "studio_1:ice_wand", \
                custom_data: {ice_wand: {}} \
            } \
        }, \
        {} \
    ] \
}