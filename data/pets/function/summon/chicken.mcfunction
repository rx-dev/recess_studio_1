summon wandering_trader ~ ~ ~ {CustomName: '"Pet Controller"', Tags: ["pets.controller", "new"], Invisible: 1b, Passengers: [{id: "chicken", tag: {CustomName: '"Pet Controller"', Tags: [["pets.exploding_chicken", "pets.visual", "new"]]}}], DespawnDelay: 1000000, Silent: 1, Invulnerable: 1}
scoreboard players operation @e[distance=..1,tag=new] pets.id = @s pets.id
tag @e remove new
