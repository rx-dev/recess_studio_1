##
#  While holding the gem: `/trigger upgrade`
#  -> Clear the gem you are holding
#  -> Replace it with a Stage II Gem
##

execute as @a[scores={upgrade=1..}] run function studio_1:gems/upgrade

# execute as @a unless items entity @s container.* minecraft:echo_shard{display:{Name:"{\"text\":\"Shard\"}",Lore:["Custom Shard with Enhanced Abilities"]},Unbreakable:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"minecraft:generic.movement_speed",Name:"generic.movement_speed",Amount:0.3,Operation:1,UUID:[I;1,2,3,4],Slot:"mainhand"},{AttributeName:"minecraft:generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:1,UUID:[I;5,6,7,8],Slot:"mainhand"},{AttributeName:"minecraft:generic.max_health",Name:"generic.max_health",Amount:5,Operation:1,UUID:[I;9,10,11,12],Slot:"mainhand"},{AttributeName:"minecraft:generic.armor_toughness",Name:"generic.armor_toughness",Amount:1,Operation:1,UUID:[I;13,14,15,16],Slot:"mainhand"}]}

# kill @e[type=minecraft:item,name="🜲Shard🜲"] run give @s minecraft:echo_shard{display:{Name:"{\"text\":\"Shard\"}",Lore:["Custom Shard with Enhanced Abilities"]},Unbreakable:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"minecraft:generic.movement_speed",Name:"generic.movement_speed",Amount:0.3,Operation:1,UUID:[I;1,2,3,4],Slot:"mainhand"},{AttributeName:"minecraft:generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:1,UUID:[I;5,6,7,8],Slot:"mainhand"},{AttributeName:"minecraft:generic.max_health",Name:"generic.max_health",Amount:5,Operation:1,UUID:[I;9,10,11,12],Slot:"mainhand"},{AttributeName:"minecraft:generic.armor_toughness",Name:"generic.armor_toughness",Amount:1,Operation:1,UUID:[I;13,14,15,16],Slot:"mainhand"}]}

# kill @e[type=minecraft:item,name="🜲Shard🜲"]
scoreboard players enable @a upgrade
