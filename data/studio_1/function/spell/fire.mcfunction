advancement revoke @s only studio_1:spell/use_fire

# handle mana
execute if score @s mana matches ..0 run return fail
scoreboard players remove @s mana 10
scoreboard players set @s[scores={mana=..0}] mana 0

# make ray
tag @s add self
scoreboard players set #hit raycast 0
scoreboard players set #iter raycast 0
execute anchored eyes positioned ^-0.2 ^ ^ run function studio_1:spell/ray/iter
tag @s remove self
