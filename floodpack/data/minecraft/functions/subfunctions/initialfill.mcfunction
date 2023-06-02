# Helper functions (keep track of water level, move Marker)
scoreboard players add initialFill yLevel 1
execute as @e[tag=initialFill] at @s run tp @s ~ ~1 ~

# Raise water level 
execute as @e[tag=initialFill] at @s run fill ~64 ~ ~64 ~-64 ~ ~-64 water keep

# Loop
execute as @e[tag=initialFill] at @s unless predicate fillvaluecheck run schedule function subfunctions/initialfill 2t