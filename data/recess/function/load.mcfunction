say [Recess Loaded]
schedule function recess:1s 1s replace
schedule function recess:5s 5s replace

scoreboard objectives add recess.nearby_beasts dummy
scoreboard objectives add recess.timer dummy
scoreboard objectives add recess.id dummy
execute unless score #current recess.id matches 0.. run scoreboard players set #current recess.id 0
