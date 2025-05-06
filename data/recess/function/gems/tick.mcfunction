function recess:gems/flux/tick

execute as @a[scores={gem=1..}] run function recess:gems/trigger
scoreboard players enable @a gem 
