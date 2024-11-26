$particle minecraft:flame ^ ^-.25 ^3 0.$(charge) 0.$(charge) 0.$(charge) .2 $(charge)
scoreboard players set #hit raycast 1
data modify entity @s Fire set value 20s
damage @s $(charge) minecraft:on_fire
playsound minecraft:entity.firework_rocket.twinkle
