execute \
    as @a \
    if items entity @s weapon.* minecraft:echo_shard[minecraft:custom_data~{spell: {}}] \
    run function studio_1:mana/player
