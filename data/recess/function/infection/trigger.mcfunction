# Toggle running state
execute if score $ACTIVE infection.state matches 1 run return run function recess:infection/trigger/stop
execute if score $ACTIVE infection.state matches 0 run return run function recess:infection/trigger/start
scoreboard players set @s infect 0
