#> from ./on_use (via ../raycast/start)

tp ^ ^ ^

# av
execute if predicate {condition: "random_chance", chance: 0.3} run particle small_flame ~ ~ ~ .15 .025 .15 0 2
execute if predicate {condition: "random_chance", chance: 0.05} run particle small_flame ~ ~ ~ .1 .1 .1 .2 2
execute if predicate {condition: "random_chance", chance: 0.1} run particle flame ~ ~ ~ 0 0 0 .1 1
execute if predicate {condition: "random_chance", chance: 0.1} run particle flame ~ ~ ~ .3 .3 .3 0 1
execute if predicate {condition: "random_chance", chance: 0.05} run particle flame ~ ~ ~ 0 0 0 0 1
