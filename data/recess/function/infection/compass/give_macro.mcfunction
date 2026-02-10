$give @s minecraft:carrot_on_a_stick[\
    lodestone_tracker=$(lodestone_tracker), \
    item_name="Infection Dungeon Finder", \
    lore=[{text: "Finds the nearest infected dungeon", color: "gray"}, {text: "Right-click to update location", color: "gray"}], \
    item_model="minecraft:compass", \
    custom_data={infection_dungeon_finder: true} \
]
