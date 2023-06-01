# called by initialize, looped here
# Add 1 to the moonPhase counter, which is doubled (moonPhase 16 = truly 8) every night between 12520 and 12539 ticks, and every morning between 23100 and 23119 ticks
execute store result score time moonPhase run time query daytime
execute if score time moonPhase matches 12520..12539 run scoreboard players add night moonPhase 1
execute if score time moonPhase matches 23100..23119 run scoreboard players add night moonPhase 1

# If morning after full moon, reset moonPhase night counter to 1. (16 + 1 = 1)
execute if score night moonPhase matches 17 run scoreboard players set night moonPhase 1

# Loop
schedule function subfunctions/mooncheck 1s