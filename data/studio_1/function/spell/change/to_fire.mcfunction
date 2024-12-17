item modify entity @s weapon.mainhand { \
    "function": "minecraft:set_custom_data", \
    "tag": { \
        "spell": {type: "fire"} \
    } \
}
item modify entity @s weapon.mainhand {
    "function": "minecraft:set_components", \
    "components": { \
        "minecraft:item_name": "{\"text\": \"Fire Spell\", \"color\": \"red\"}"
    }
}

tellraw @s {"text": "Changed to fire", "color": "red"}

return 1