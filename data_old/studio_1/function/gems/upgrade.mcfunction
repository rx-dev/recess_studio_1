scoreboard players reset @s upgrade

execute unless items entity @s weapon.* minecraft:echo_shard[custom_data~{gem:{}}] run return 1
execute \
    if items entity @s weapon.mainhand minecraft:echo_shard[custom_data~{gem:{}}] \
    run item replace entity @s weapon.offhand from entity @s weapon.offhand

execute \
    if items entity @s weapon.offhand minecraft:echo_shard[custom_data~{gem:{}}] \
    run item replace entity @s weapon.offhand from entity @s weapon.offhand
