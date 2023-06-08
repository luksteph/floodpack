# Helper functions (keep track of water level, move Marker)
scoreboard players add initialFill yLevel 1
execute as @e[tag=initialFill] at @s run tp @s ~ ~1 ~

# Raise water level 
execute as @e[tag=initialFill] at @s run fill ~ ~ ~ ~-128 ~ ~-128 water keep
execute as @e[tag=initialFill] at @s run fill ~ ~ ~ ~128 ~ ~-128 water keep
execute as @e[tag=initialFill] at @s run fill ~ ~ ~ ~128 ~ ~128 water keep
execute as @e[tag=initialFill] at @s run fill ~ ~ ~ ~-128 ~ ~128 water keep

# Loop
execute as @e[tag=initialFill] at @s unless predicate fillvaluecheck run schedule function subfunctions/initialfill 5t
execute if predicate fillvaluecheck run kill @e[tag=initialFill]
execute if predicate fillvaluecheck run scoreboard players reset initialFill