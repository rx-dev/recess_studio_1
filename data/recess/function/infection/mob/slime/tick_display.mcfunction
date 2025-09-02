scoreboard players set $riding temp 1
execute on vehicle run scoreboard players set $riding temp 0
execute if score $riding temp matches ..0 run kill @s
