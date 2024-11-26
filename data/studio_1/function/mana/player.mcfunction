# @s: player holding a fire spell
# obj: mana

## display actionbar
title @s actionbar {"score": {"name": "@s", "objective": "mana"}, "color": "red"}

## passively regen to a CAP
scoreboard players add @s[scores={mana=..99}] mana 1
