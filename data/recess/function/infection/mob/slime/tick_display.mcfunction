scoreboard players set $riding temp 0
execute on vehicle run scoreboard players set $riding temp 1
execute if score $riding temp matches ..0 run kill @s

execute on vehicle run data modify storage quack:api euler set from entity @s Rotation
data modify storage quack:api euler append value 0.0f
function quack:api/scoreboard/euler_to_quaternion
data modify entity @s transformation.right_rotation set from storage quack:api quaternion
