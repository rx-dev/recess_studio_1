title @a title {text: "A deep dread fills your mind...", color: "dark_red"}
title @a subtitle {text: "You feel an infection taking hold.", color: "red"}
scoreboard players set @a flamethrower_recipe 1
advancement revoke @s only recess:infection/center_infection
function recess:infection/infect_block
