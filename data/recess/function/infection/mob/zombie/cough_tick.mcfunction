particle dust{color:[0, 1, 1],scale:1} ~ ~ ~ 2 2 2 1 5 normal @a
effect give @e[distance=..2] minecraft:poison 1 0 true

scoreboard players add @s infection.mob_timer 1
kill @s[scores={infection.mob_timer=100..}]
