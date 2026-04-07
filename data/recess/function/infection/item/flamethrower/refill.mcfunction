#> from ./on_use

item modify entity @s weapon.mainhand {function: "set_damage", damage: 1, add: true}
execute if predicate {condition:"minecraft:random_chance",chance:0.25} run item replace entity @s weapon.offhand with bucket

tag @s remove self
