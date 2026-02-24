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
scoreboard objectives add const dummy
scoreboard objectives add infection.joined_world dummy
scoreboard objectives add infection.used_carrot_on_a_stick minecraft.used:minecraft.carrot_on_a_stick
scoreboard players set $25 const 25
scoreboard players set $100 const 100

bossbar add recess:infection {text: "Infection", color: "red"}


scoreboard players set $freq recess.timer 4
execute unless score #current recess.id matches 0.. run scoreboard players set #current recess.id 0

bossbar set recess:infection max 1000
