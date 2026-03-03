# @s: wandering trader

execute store result score @s infection.ghost_id run scoreboard players add #current infection.ghost_id 1
item replace entity @s weapon.mainhand with air

# make wandering trader invuln, invis, silent, small
attribute @s minecraft:scale base set 0.9
data merge entity @s {Invulnerable:1b, Silent:1b, Tags: ["infection.mob", "infection.ghost_brain"], active_effects: [{duration: -1, show_icon: 0b, amplifier: 1b, id: "minecraft:invisibility", show_particles: 0b}]}

# summon visual ghost
summon minecraft:mannequin ~ ~ ~ {Tags:["infection.new_ghost", "infection.ghost", "infection.mob"],profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDkxOTk4ZWUwYTI1OTg0NjU2NTljYTNhZThkZTVmNjFlYWE0YjhlOTM3OGM2MGYzZDY5MGRkNWQ0MmM1NWU5ZCJ9fX0="}]}}

# make ghost ride trader
scoreboard players operation @n[type=mannequin, tag=infection.new_ghost] infection.ghost_id = #current infection.ghost_id
tag @n[type=mannequin, tag=infection.new_ghost] remove infection.new_ghost
