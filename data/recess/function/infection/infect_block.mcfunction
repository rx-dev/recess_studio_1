summon marker ~ ~ ~ {Tags: ["recess.infection_start"]}
setblock ~ ~ ~ pale_moss_block
say infection started
scoreboard players set $BLOCKS_INFECTED infection.state 0
scoreboard players set $INFECTION_STATIC_STEPS infection.state 0
schedule function recess:infection/clock/main 1t replace
