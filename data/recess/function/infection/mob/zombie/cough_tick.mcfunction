particle dust{color:[0, 1, 1],scale:1} ~ ~ ~ .5 .5 .5 .1 2 normal @a
effect give @e[distance=..2] minecraft:poison 1 0 true
execute if entity @s[scores={infection.mob_timer=..2}] run playsound minecraft:block.soul_sand.break master @a ~ ~ ~ 1 .1

scoreboard players add @s infection.mob_timer 1
kill @s[scores={infection.mob_timer=100..}]
