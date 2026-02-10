scoreboard players enable @a flamethrower_recipe
execute as @a[scores={flamethrower_recipe=1..}] run function recess:infection/trigger_flamethrower_recipe
scoreboard players set @a flamethrower_recipe 0

# execute as @e[type=marker,tag=recess.infector] at @s align xyz positioned ~ ~1 ~ run particle end_rod
execute as @e[type=marker,tag=infection.flamethrower_flame] at @s run function recess:infection/item/flamethrower/flame_tick

scoreboard players add @a infection.joined_world 0
execute as @a[scores={infection.joined_world=..0}] run function recess:infection/compass/give
execute \
    as @a[scores={infection.used_carrot_on_a_stick=1..}] \
    if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data~{infection_dungeon_finder: true}] \
    run function recess:infection/compass/update_holding
scoreboard players reset @a infection.used_carrot_on_a_stick
