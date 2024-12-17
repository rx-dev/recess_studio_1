execute \
    as @a \
    if items entity @s weapon.* *[minecraft:custom_data~{spell: {}}] \
    run function studio_1:mana/player

## passively regen to a CAP
scoreboard players add @a mana 1
scoreboard players set @a[scores={mana=100..}] mana 100
