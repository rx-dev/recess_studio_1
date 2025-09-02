execute on vehicle run data modify storage recess:temp rot set from entity @s Rotation
data modify entity @s Rotation set from storage recess:temp rot

scoreboard players set $riding temp 0
execute on vehicle run scoreboard players set $riding temp 1
execute if score $riding temp matches ..0 run kill @s
