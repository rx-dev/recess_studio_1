advancement revoke @s only studio_1:spell/use_fire

execute anchored eyes run particle minecraft:flame ^ ^-.25 ^3 0.1 0.1 0.1 .2 3

execute anchored eyes positioned ^ ^ ^3 as @e[type=!player,distance=..0.5] run data modify entity @s Fire set value 20s