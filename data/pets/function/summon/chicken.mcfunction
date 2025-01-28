summon wandering_trader ~ ~ ~ {Offers:{Recipes:[]},active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}],Silent:1b, Invulnerable: 1b, CustomName: '"Pet Controller"', Tags: ["pets.controller", "new"], Passengers: [{id: "chicken", tag: {CustomName: '"Pet"', Tags: [["pets.exploding_chicken", "pets.visual", "new"]]}}]}
scoreboard players operation @e[distance=..1,tag=new] pets.id = @s pets.id
tag @e remove new
