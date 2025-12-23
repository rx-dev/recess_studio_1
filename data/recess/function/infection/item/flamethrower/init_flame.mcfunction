#> from ./on_use

tag @s add infection.flamethrower_flame
$tp @s ^$(x) ^$(y) ^$(z) ~$(roll) ~$(pitch)
scoreboard players operation @s reccess.id = #id temp
