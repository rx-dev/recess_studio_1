summon wandering_trader ~ ~ ~ {wander_target: [0, 0, 0], DespawnDelay: -1, Offers:{Recipes:[]}, active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b},{id:"minecraft:resistance",duration:-1,amplifier:0b,show_particles:0b}], Silent: true, Invulnerable: true, CustomName: '"Pet Controller"', CustomNameVisible: false, Tags: ["pets.controller", "new"], Passengers: [{id: "chicken", tag: {CustomName: '"Pet"', Tags: [["pets.exploding_chicken", "pets.visual", "new"]]}}]}
scoreboard players operation @e[distance=..1,tag=new] pets.id = @s pets.id
tag @e remove new
