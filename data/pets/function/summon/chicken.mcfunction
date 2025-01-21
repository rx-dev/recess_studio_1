summon wandering_trader ~ ~ ~ {Tags: ["pets.controller", "new"], Invisible: 1b, Passengers: [{id: "chicken", tag: {Tags: [["pets.exploding_chicken", "pets.visual", "new"]]}}]}
scoreboard players operation @e[distance=..1,tag=new] pets.id = @s pets.id
tag @e remove new
