scoreboard players set #hit raycast 1
attribute @s minecraft:jump_strength modifier add freeze -100.0 add_value
attribute @s minecraft:gravity base set 0
attribute @s minecraft:movement_speed modifier add freeze -100.0 add_value
attribute @s minecraft:armor modifier add freeze -1.0 add_value
damage @s 10
playsound minecraft:entity.player.hurt_freeze master @a
scoreboard players set @s frozen 25
title @s title {"text": "You are Frozen", "color": "#A7C7E7"}
