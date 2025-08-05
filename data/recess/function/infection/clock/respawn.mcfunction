execute at @n[type=marker,tag=recess.infection_start] \
    run summon marker ~ ~ ~ {Tags: ["recess.infector"]}
kill @s
return 1
