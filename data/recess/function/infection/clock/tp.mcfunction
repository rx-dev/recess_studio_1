scoreboard players add @s infection.timer 1
$tp ~$(x) ~$(y) ~$(z)
execute \
    if score @s infection.timer matches ..10 \
    if entity @n[type=marker,tag=recess.infector,distance=..0.1] \
    run function recess:infection/clock/tp with storage recess:infection input
