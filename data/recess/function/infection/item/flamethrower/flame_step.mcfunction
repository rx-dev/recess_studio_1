#> from ./on_use (via ../raycast/start)

tp ^ ^ ^

# av
particle small_flame ~ ~ ~ .15 .025 .15 0 5
execute if predicate {condition: "random_chance", chance: 0.25} run particle small_flame ~ ~ ~ .1 .1 .1 .2 2
execute if predicate {condition: "random_chance", chance: 0.4} run particle flame ~ ~ ~ 0 0 0 .1 1
execute if predicate {condition: "random_chance", chance: 0.3} run particle flame ~ ~ ~ .3 .3 .3 0 1
execute if predicate {condition: "random_chance", chance: 0.75} run particle flame ~ ~ ~ 0 0 0 0 1

playsound minecraft:block.fire.ambient player @a ~ ~ ~ .4 2
execute if predicate {condition: "random_chance", chance: 0.5} run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ .4 1.5
execute if predicate {condition: "random_chance", chance: 0.1} run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ .6 .1
execute if predicate {condition: "random_chance", chance: 0.3} run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ .87 1
