tellraw @a {text:"[Infection Datapack Loaded]",color:"yellow"}
function quack:api/create_scoreboards

schedule function recess:1s 1s replace
schedule function recess:5s 5s replace

scoreboard objectives add recess.nearby_beasts dummy
scoreboard objectives add recess.timer dummy
scoreboard objectives add recess.damage_timer dummy
scoreboard objectives add recess.id dummy
scoreboard objectives add gem trigger
scoreboard objectives add temp trigger
scoreboard objectives add raycast dummy
scoreboard objectives add infection.state dummy
scoreboard objectives add infection.timer dummy
scoreboard objectives add infection.air_water dummy
scoreboard objectives add infection.mob_timer dummy
scoreboard objectives add infection.in_flamethrower dummy
scoreboard objectives add flamethrower_recipe trigger

scoreboard players set $freq recess.timer 4
execute unless score #current recess.id matches 0.. run scoreboard players set #current recess.id 0
