title @a title {text: "A deep dread fills your mind...", color: "dark_red"}
title @a subtitle {text: "You feel an infection taking hold.", color: "red"}
tellraw @a [ \
    { text: "An infection has been spotted! Craft and use a ", color: "red" }, \
    { \
        text: "[Flamethrower]", \
        color: "gold", \
        italic: true, \
        hover_event: { \
            action: "show_item", \
            id: "minecraft:poisonous_potato", \
            components: { \
                item_model: "minecraft:torchflower", \
                item_name: "Flamethrower", \
                lore: [ \
                    {text: "A makeshift flamethrower built from scrap.", color: "gray", italic: false}, \
                    {text: "Effective at burning away infection and mobs.", color: "gray", italic: false}, \
                    "", \
                    {text: "Crafting Recipe:", color: "white", italic: false}, \
                    [{text: " ", color: "white", italic: false}, " ", \
                    {atlas: "items", sprite: "item/lava_bucket"}, \
                    " ", " "], \
                    [{atlas: "blocks", sprite: "block/copper_block", color: "white", italic: false}, \
                    {atlas: "items", sprite: "item/copper_ingot"}, \
                    {atlas: "items", sprite: "item/copper_ingot"}], \
                    [{atlas: "items", sprite: "item/copper_ingot", color: "white", italic: false}, \
                    {atlas: "items", sprite: "item/fire_charge"}, \
                    " ", " "] \
                ], \
                rarity: "rare" \
            } \
        }, \
        click_event: { \
            action: "run_command", \
            command: 'trigger flamethrower_recipe' \
        } \
    }, \
    {text: " to stop it from spreading!", color: "red"} \
]