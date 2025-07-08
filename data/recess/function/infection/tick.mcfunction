scoreboard players enable @a infect
execute as @a[scores={infect=1..}] run function recess:infection/trigger
execute if score $ACTIVE infection.state matches 1 run function recess:infection/active
