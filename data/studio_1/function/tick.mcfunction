execute as @a[scores={ice_wand=1..}] if items entity @s weapon.* minecraft:carrot_on_a_stick[custom_data~{ice_wand:{}}] run function studio_1:ice_wand/click
scoreboard players reset @a ice_wand

execute as @e[tag=!initialized] run function studio_1:mob/init

scoreboard players enable @a wave

execute as @a[scores={wave=1..}] run function studio_1:wave

scoreboard players remove @a[scores={frozen=1..}] frozen 1
execute as @a[scores={frozen=1..}] run title @s actionbar [{"text": "Frozen for ", "color": "#A7C7E7"}, {"score": {"name": "@s", "objective": "frozen"}}]
execute as @a[scores={frozen=1}] run function studio_1:ice_wand/unfreeze


execute as @a unless items entity @s container.* minecraft:echo_shard{display:{Name:"{\"text\":\"Shard\"}",Lore:["Custom Shard with Enhanced Abilities"]},Unbreakable:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"minecraft:generic.movement_speed",Name:"generic.movement_speed",Amount:0.3,Operation:1,UUID:[I;1,2,3,4],Slot:"mainhand"},{AttributeName:"minecraft:generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:1,UUID:[I;5,6,7,8],Slot:"mainhand"},{AttributeName:"minecraft:generic.max_health",Name:"generic.max_health",Amount:5,Operation:1,UUID:[I;9,10,11,12],Slot:"mainhand"},{AttributeName:"minecraft:generic.armor_toughness",Name:"generic.armor_toughness",Amount:1,Operation:1,UUID:[I;13,14,15,16],Slot:"mainhand"}]}

kill @e[type=minecraft:item,name="🜲Shard🜲"] run give @s minecraft:echo_shard{display:{Name:"{\"text\":\"Shard\"}",Lore:["Custom Shard with Enhanced Abilities"]},Unbreakable:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"minecraft:generic.movement_speed",Name:"generic.movement_speed",Amount:0.3,Operation:1,UUID:[I;1,2,3,4],Slot:"mainhand"},{AttributeName:"minecraft:generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:1,UUID:[I;5,6,7,8],Slot:"mainhand"},{AttributeName:"minecraft:generic.max_health",Name:"generic.max_health",Amount:5,Operation:1,UUID:[I;9,10,11,12],Slot:"mainhand"},{AttributeName:"minecraft:generic.armor_toughness",Name:"generic.armor_toughness",Amount:1,Operation:1,UUID:[I;13,14,15,16],Slot:"mainhand"}]}

kill @e[type=minecraft:item,name="🜲Shard🜲"]