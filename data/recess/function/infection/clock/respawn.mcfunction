execute at @n[type=marker,tag=recess.infection_start] \
    run summon marker ~ ~ ~ {Tags: ["recess.infector"]}
execute if predicate {"condition": "random_chance", "chance": 0.25} kill @s
return 1
