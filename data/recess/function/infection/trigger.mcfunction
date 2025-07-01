# Toggle running state
execute if score $ACTIVE infection.state matches 1 run return run scoreboard players set $ACTIVE infection.state 0
execute if score $ACTIVE infection.state matches 0 run return run function recess:infection/trigger/start
