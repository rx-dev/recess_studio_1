title @a title {text: "A deep dread fills your mind...", color: "dark_red"}
title @a subtitle {text: "You feel an infection taking hold.", color: "red"}
tellraw @a [\
    { text: "An infection has been spotted! Craft and use a ", color: "red" }, \
    { \
        text: "[Flamethrower]", \
        color: "gold", \
        italic: true, \
        hover_event: { \
            action: "show_item", \
            contents: { \
                id: "minecraft:poisonous_potato", \
                components: { \
                    item_model: "minecraft:torchflower", \
                    item_name: "Flamethrower", \
                    item_lore: [ \
                        {text: "A makeshift flamethrower built from scrap.", color: "gray"}, \
                        {text: "Effective at burning away infection and mobs.", color: "gray"} \
                    ], \
                    rarity: "rare", \
                } \
            } \
        }, \
        click_event: { \
            action: "run_command", \
            value: 'trigger flamethrower_recipe' \
        } \
    }, \
    {text: " to stop it from spreading!", color: "red"} \
]