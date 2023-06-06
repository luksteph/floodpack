# called by main
# Helper functions (keep track of water level, move Marker)
scoreboard players add waterLevel yLevel 1
execute as @e[tag=waterLevel] at @s run tp @s ~ ~1 ~

# Raise water level and ring a bell (if third trimester, replace blocks with flood)
execute as @e[tag=waterLevel] at @s unless predicate isthirdtrimester run fill ~ ~ ~ ~-128 ~ ~-128 water keep
execute as @e[tag=waterLevel] at @s unless predicate isthirdtrimester run fill ~ ~ ~ ~128 ~ ~-128 water keep
execute as @e[tag=waterLevel] at @s unless predicate isthirdtrimester run fill ~ ~ ~ ~128 ~ ~128 water keep
execute as @e[tag=waterLevel] at @s unless predicate isthirdtrimester run fill ~ ~ ~ ~-128 ~ ~128 water keep

execute as @e[tag=waterLevel] at @s if predicate isthirdtrimester run fill ~64 ~ ~64 ~-64 ~ ~-64 water replace
execute as @a at @s run playsound block.bell.resonate ambient @s ~ ~ ~