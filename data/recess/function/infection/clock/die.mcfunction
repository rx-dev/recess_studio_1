kill @e[type=marker,tag=recess.infector]
kill @e[type=marker,tag=recess.infection_start]

title @a title {text: "Infection has died", color: "red", bold: true}
title @a subtitle {text: "Humanity has won", color: "dark_red", italic: true}
scoreboard players set $ACTIVE infection.state 0
