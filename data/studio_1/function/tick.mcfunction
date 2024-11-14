execute as @a[scores={ice_wand=1..}] if items entity @s weapon.* minecraft:carrot_on_a_stick[custom_data~{ice_wand:{}}] run function studio_1:ice_wand/click
scoreboard players reset @a ice_wand

execute as @e[tag=!initialized] run function studio_1:mob/init

scoreboard players enable @a wave

execute as @a[scores={wave=1..}] run function studio_1:wave

scoreboard players remove @a[scores={frozen=1..}] frozen 1
execute as @a[scores={frozen=1..}] run title @s actionbar [{"text": "Frozen for ", "color": "#A7C7E7"}, {"score": {"name": "@s", "objective": "frozen"}}]
execute as @a[scores={frozen=1}] run function studio_1:ice_wand/unfreeze


execute as @a unless items entity @s container.* minecraft:echo_shard[minecraft:item_name=shard] run give @s minecraft:echo_shard[minecraft:item_name=shard]
kill @e[type=minecraft:item,name=hard]
function studio_1:tick

say ran