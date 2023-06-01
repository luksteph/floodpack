# Add 1 to timeDummy objective every second, and reset after 30 seconds
scoreboard players add fakePlayer timeDummy 1

# Flood the world
scoreboard players operation waterlvstore timeDummy = fakePlayer timeDummy

# time below 2400 sec
execute if score fakePlayer timeDummy matches 0..2400 run scoreboard players operation waterlvstore timeDummy -= const1200 timeDummy
execute if score fakePlayer timeDummy matches 0..2400 run scoreboard players operation waterlvstore timeDummy *= waterlvstore timeDummy
execute if score fakePlayer timeDummy matches 0..2400 run scoreboard players operation waterlvstore timeDummy %= const22500 timeDummy

# time between 2400 and 4000 sec
execute if score fakePlayer timeDummy matches 2400..4000 run scoreboard players operation waterlvstore timeDummy %= const10 timeDummy

# time between 4000 sec and 5470 sec
execute if score fakePlayer timeDummy matches 4000..5470 run scoreboard players operation waterlvstore timeDummy -= const5470 timeDummy
execute if score fakePlayer timeDummy matches 4000..5470 run scoreboard players operation waterlvstore timeDummy *= waterlvstore timeDummy
execute if score fakePlayer timeDummy matches 4000..5470 run scoreboard players operation waterlvstore timeDummy %= constn22500 timeDummy
execute if score fakePlayer timeDummy matches 4000..5470 run scoreboard players operation waterlvstore timeDummy += const320 timeDummy

# what the fuck?
execute if score waterlvstore timeDummy matches 0 run function flood

# Spawn entities (10% chance, runs at 30sec intervals)
scoreboard players operation entitystore timeDummy = fakePlayer timeDummy
scoreboard players operation entitystore timeDummy %= const30 timeDummy
execute if score entitystore timeDummy matches 0 if predicate nightchance run function entityspawning

# Damage players who are in the water
execute as @a at @s if predicate floodswimmer run function subfunctions/swimmingdmg

# Loop
schedule function main 1s