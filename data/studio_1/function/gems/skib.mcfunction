scoreboard players reset @s skib

execute \
if items entity @s weapon.* * \
    run item replace entity @s weapon.offhand from entity @s weapon.offhand