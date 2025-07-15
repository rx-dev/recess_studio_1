say [Recess Loaded]
schedule function recess:1s 1s replace
schedule function recess:5s 5s replace

scoreboard objectives add recess.nearby_beasts dummy
scoreboard objectives add recess.timer dummy
scoreboard objectives add recess.damage_timer dummy
scoreboard objectives add recess.id dummy
scoreboard objectives add gem trigger
scoreboard objectives add temp trigger
scoreboard objectives add raycast dummy
scoreboard objectives add infect trigger
scoreboard objectives add infection.state dummy
scoreboard objectives add infection.timer dummy

scoreboard players set $freq recess.timer 4
execute unless score #current recess.id matches 0.. run scoreboard players set #current recess.id 0

schedule function recess:infection/wait_for_player 1t replace
