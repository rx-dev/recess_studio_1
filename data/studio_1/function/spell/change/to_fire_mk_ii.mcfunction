item modify entity @s weapon.mainhand { \
    "function": "minecraft:set_custom_data", \
    "tag": { \
        "spell": "{type: fire_mk_II}" \
    } \
}
item modify entity @s weapon.mainhand {
    "function": "minecraft:set_components", \
    "components": { \
        "minecraft:item_name": "{\"text\": \"Fire Spell MK II\", \"color\": \"red\"}"
    }
}

tellraw @s {"text": "Changed to fire ball", "color": "red"}

return 1
