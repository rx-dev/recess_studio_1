# percentage chance to die (still can infect)
execute if predicate {"condition": "random_chance", "chance": 0.05} run kill @s

# walk
data modify storage recess:infection input set value {}
execute store result storage recess:infection input.x int 1 run random value -1..1
execute store result storage recess:infection input.y int 1 run random value -1..1
execute store result storage recess:infection input.z int 1 run random value -1..1
function recess:infection/clock/tp with storage recess:infection input

# do nothing
execute if block ~ ~ ~ pale_moss_block run return 1

# reset infector
execute if block ~ ~ ~ #air run kill @s
execute if block ~ ~ ~ #air \
    at @n[type=marker,tag=recess.infection_start] \
    run summon marker ~ ~ ~ {Tags: ["recess.infector"]}
execute if block ~ ~ ~ #air run return 1

# actually infect
setblock ~ ~ ~ pale_moss_block
playsound minecraft:block.grass.break master @a ~ ~ ~ 1 .1
particle minecraft:witch
say infected!
