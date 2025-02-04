tag @s add pets.visual
tag @s add pets.chicken_head
loot replace entity @s contents loot pets:chicken_head
scoreboard players operation @s pets.id = #id pets.id
data merge entity @s {Tags: ["pets", "pets.exploding_chicken", "pets.visual"], CustomName: '"Pet"'}
