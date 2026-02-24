# @s: wandering trader

# make wandering trader invuln, invis, silent, small
attribute @s minecraft:scale base set 0.1
data merge entity @s {Invulnerable:1b, Silent:1b, Tags: ["infection.ghost_brain"]}
effect give @s minecraft:invisibility infinite 1 true

# summon visual ghost
summon minecraft:mannequin ~ ~ ~ {Tags:["infection.new_ghost", "infection.ghost", "infection.mob"],profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDkxOTk4ZWUwYTI1OTg0NjU2NTljYTNhZThkZTVmNjFlYWE0YjhlOTM3OGM2MGYzZDY5MGRkNWQ0MmM1NWU5ZCJ9fX0="}]}}

# make ghost ride trader
ride @n[type=mannequin, tag=infection.new_ghost] mount @s
tag @n[type=mannequin, tag=infection.new_ghost] remove infection.new_ghost
