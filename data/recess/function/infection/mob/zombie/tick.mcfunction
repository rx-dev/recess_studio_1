execute \
    if predicate {"condition": "random_chance", "chance": 0.005} \
    anchored eyes \
    positioned ^ ^ ^2.5 \
    run summon marker ~ ~ ~ {Tags: ["infection.mob", "infection.zombie_cough"]}
