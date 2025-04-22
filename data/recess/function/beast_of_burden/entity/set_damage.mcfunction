$attribute @s attack_damage modifier add beast_of_burden $(damage) add_value

$execute as @e[type=zombie, tag=recess.beast_of_burden] at @s anchored eyes run particle crit ~ ~ ~ .2 .2 .2 $(damage) $(raw)
