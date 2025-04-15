scoreboard players reset @s skib

execute \
    if items entity @s weapon.* * \
    run item replace entity @s container.1 from entity @s weapon.offhand

summon minecraft:creeper ~ ~ ~ {Fuse:0b}
