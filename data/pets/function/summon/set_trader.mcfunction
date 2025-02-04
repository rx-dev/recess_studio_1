data merge entity @s {wander_target: [I; 0, 0, 0], DespawnDelay: -1, Offers:{Recipes:[]}, active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b},{id:"minecraft:resistance",duration:-1,amplifier:0b,show_particles:0b}], Silent: true, Invulnerable: true, CustomName: '"Pet Controller"', CustomNameVisible: false, Tags: ["pets", "pets.controller"]}
scoreboard players operation @s pets.id = #id pets.id
team join no_collision
attribute @s minecraft:movement_speed modifier add boosted 0.3 add_value
