execute store result score $pack_size temp run random value 3..6

# spawn between 3-6 mobs
execute if score $pack_size temp matches 3.. run function infection:mob/spawn
execute if score $pack_size temp matches 3.. run function infection:mob/spawn
execute if score $pack_size temp matches 3.. run function infection:mob/spawn
execute if score $pack_size temp matches 4.. run function infection:mob/spawn
execute if score $pack_size temp matches 5.. run function infection:mob/spawn
execute if score $pack_size temp matches 6.. run function infection:mob/spawn

return 1
