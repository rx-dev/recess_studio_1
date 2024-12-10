item modify entity @s weapon.mainhand { \
    "function": "minecraft:set_custom_data", \
    "tag": { \
        "spell": "{type: fire}" \
    } \
}

tellraw @s {"text": "Changed to fire", "color": "red"}

return 1