$bossbar set recess:infection name "$(blocks) blocks infected: Fill Bar to irradicate"
execute store result bossbar recess:infection value run scoreboard players get $INFECTION_STATIC_STEPS infection.state
