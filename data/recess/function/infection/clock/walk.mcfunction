scoreboard players set @s infection.timer 0

execute \
    if predicate {"condition": "random_chance", "chance": 0.4} \
    run particle minecraft:warped_spore ~ ~.6 ~ .5 .5 .5 .2 1 normal

# walk
data modify storage recess:infection input set value {}
execute store result storage recess:infection input.x int 1 run random value -1..1
execute store result storage recess:infection input.y int 1 run random value -1..1
execute store result storage recess:infection input.z int 1 run random value -1..1
function recess:infection/clock/tp with storage recess:infection input

# percentage chance to die (still can infect)
execute if predicate {"condition": "random_chance", "chance": 0.01} run kill @s

# do nothing
execute if block ~ ~ ~ pale_moss_block run return 1

# reset infector
execute if block ~ ~ ~ water run tag @s add infection.die
execute if block ~ ~ ~ #air run tag @s add infection.die
execute if entity @s[tag=infection.die] \
    at @n[type=marker,tag=recess.infection_start] \
    run summon marker ~ ~ ~ {Tags: ["recess.infector"]}
kill @s[tag=infection.die]
execute if entity @s[tag=infection.die] run return 1

# actually infect
setblock ~ ~ ~ pale_moss_block
scoreboard players add $BLOCKS_INFECTED infection.state 1
execute store result storage recess:infection blocks int 1 run scoreboard players get $BLOCKS_INFECTED infection.state
function recess:infection/clock/update_bossbar with storage recess:infection 
playsound minecraft:block.grass.break master @a ~ ~ ~ 1 .1
execute align xyz positioned ~ ~1 ~ run particle minecraft:witch
execute if predicate {"condition": "random_chance", "chance": 0.05} run function recess:infection/clock/move
