clear @a minecraft:end_crystal
kill @e[type=firework_rocket]

function recess:beast_of_burden/tick
function recess:gems/tick
function recess:infection/tick
kill @e[type=minecraft:falling_block]

execute at @e[name=STABPOS] run summon minecraft:tnt_minecart ~ ~-15 ~
execute at @e[name=STABPOS] run summon tnt ~ ~-15 ~ {fuse:0,custom_name:'[{"text":"STAB","italic":true,"color":"dark_red","bold":true}]'}
