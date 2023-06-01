# Add 1 to timeDummy objective every second, and reset after 30 seconds
scoreboard players add fakePlayer timeDummy 1

# Flood the world
scoreboard players operation waterlvstore timeDummy = fakePlayer timeDummy

#LINEAR WATER RISE TEST
scoreboard players operation waterlvstore timeDummy %= const30 timeDummy

# Function-based water rise
#execute if predicate isfirsttrimester run function timebased/firsttrimester
#execute if predicate issecondtrimester run function timebased/secondtrimester
#execute if predicate isthirdtrimester run function timebased/thirdtrimester

# yeah
execute if score waterlvstore timeDummy matches 0 run function flood

# Spawn entities (10% chance, runs at 30sec intervals)
scoreboard players operation entitystore timeDummy = fakePlayer timeDummy
scoreboard players operation entitystore timeDummy %= const30 timeDummy
execute if score entitystore timeDummy matches 0 if predicate nightchance run function entityspawning

# Damage players who are in the water
execute as @a at @s if predicate floodswimmer run function subfunctions/swimmingdmg

# Loop
schedule function main 1s