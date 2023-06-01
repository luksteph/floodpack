# called by main
# Helper functions (keep track of water level, move Marker)
scoreboard players remove waterLevel yLevel 1
execute as @e[tag=waterLevel] at @s run tp @s ~ ~-1 ~

# Lower water level (and ring a bell if in receding phase)
execute as @e[tag=waterLevel] at @s run fill ~64 ~ ~64 ~-64 ~ ~-64 air replace water
execute as @e[tag=waterLevel] at @s run fill ~64 ~ ~64 ~-64 ~ ~-64 air replace ice
execute if predicate isreceding run playsound block.bell.use master @a