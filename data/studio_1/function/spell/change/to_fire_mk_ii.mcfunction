item modify entity @s weapon.mainhand { \
    "function": "minecraft:set_custom_data", \
    "tag": { \
        "spell": "{type: fire_mk_II}" \
    } \
}

tellraw @s {"text": "Changed to fire ball", "color": "red"}

return 1
