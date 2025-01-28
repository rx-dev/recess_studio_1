execute as @a unless score @s pets.id = @s pets.id run function pets:id/set
execute as @e[type=wandering_trader,tag=pets.controller] at @s run function pets:process/pet
say hi