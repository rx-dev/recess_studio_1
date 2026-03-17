# License: MIT
# theorized by vdvman1, implemented by rx97

#define storage temp:

#> Inputs:
#>   location / at context -> start point (assumes it is loaded)
#>   @s entity -> end point
#>   storage temp: dist.vector (optional) ->
#>   : must be in [x.xd, y.yd, z.zd] format

#> Examples:
#>   execute positioned 100.0 100.0 100.0 run function <this>
#>     -> assuming @s is the player, will measure distance to 100.0 100.0 100.0
#>
#>   data modify storage temp: dist.vector set from entity @s Motion
#>   execute positioned 0.0 0.0 0.0 run function <this>
#> 	   -> calculates the velocity of entity @s

#> Summon helper if it doesn't exist..
forceload 0 0
execute unless entity 4b40174b-85fa-5b2a-b82b-94a86a3399b9 run summon marker ~ ~ ~ {UUID:[I;1262491467,-2047190230,-1205103448,1781766585]}

#> Get start
tp 4b40174b-85fa-5b2a-b82b-94a86a3399b9 ~ ~ ~
data modify storage temp: dist.start set from entity 4b40174b-85fa-5b2a-b82b-94a86a3399b9 Pos

#> Get either Pos or Custom
execute unless data storage temp: dist.vector run data modify entity 4b40174b-85fa-5b2a-b82b-94a86a3399b9 Pos set from entity @s Pos
execute if data storage temp: dist.vector run data modify entity 4b40174b-85fa-5b2a-b82b-94a86a3399b9 Pos set from storage temp: dist.vector

#> Store original vector component
scoreboard players set $component temp 0

# First, try x
execute store result score $out temp run data get entity 4b40174b-85fa-5b2a-b82b-94a86a3399b9 Pos[0] 100000
execute store result score $start temp run data get storage temp: dist.start[0] 100000
scoreboard players operation $out temp -= $start temp
execute if score $out temp matches -1..1 run scoreboard players set $component temp 1

# If x failed, try y
execute if score $component temp matches 1 store result score $out temp run data get entity 4b40174b-85fa-5b2a-b82b-94a86a3399b9 Pos[1] 100000
execute if score $component temp matches 1 store result score $start temp run data get storage temp: dist.start[1] 100000
execute if score $component temp matches 1 run scoreboard players operation $out temp -= $start temp
execute if score $component temp matches 1 if score $out temp matches -1..1 run scoreboard players set $component temp 2

# If y failed, try z
execute if score $component temp matches 2 store result score $out temp run data get entity 4b40174b-85fa-5b2a-b82b-94a86a3399b9 Pos[2] 100000
execute if score $component temp matches 2 store result score $start temp run data get storage temp: dist.start[2] 100000
execute if score $component temp matches 2 run scoreboard players operation $out temp -= $start temp
execute if score $component temp matches 2 if score $out temp matches -1..1 run scoreboard players set $component temp -1

# set to 0 if all components are 0
execute if score $component temp matches -1 run scoreboard players set $out temp 0

#> Gather the unit vector (positioned is pos context ~ ~ ~)
execute as 4b40174b-85fa-5b2a-b82b-94a86a3399b9 facing entity @s feet positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1

execute if score $component temp matches 0 store result score $unit_component temp run data get entity 4b40174b-85fa-5b2a-b82b-94a86a3399b9 Pos[0] 100
execute if score $component temp matches 1 store result score $unit_component temp run data get entity 4b40174b-85fa-5b2a-b82b-94a86a3399b9 Pos[1] 100
execute if score $component temp matches 2 store result score $unit_component temp run data get entity 4b40174b-85fa-5b2a-b82b-94a86a3399b9 Pos[2] 100

#> Find magnitude, will return 0 if $out is 0
scoreboard players operation $out temp /= $unit_component temp

#> Resets for future invocations
data remove storage temp: dist
tp 4b40174b-85fa-5b2a-b82b-94a86a3399b9 0.0 0.0 0.0
