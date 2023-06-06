# called by main
# Lower water level
execute as @e[tag=waterLevel] at @s run fill ~ ~ ~ ~-128 ~ ~-128 air replace water
execute as @e[tag=waterLevel] at @s run fill ~ ~ ~ ~128 ~ ~-128 air replace water
execute as @e[tag=waterLevel] at @s run fill ~ ~ ~ ~128 ~ ~128 air replace water
execute as @e[tag=waterLevel] at @s run fill ~ ~ ~ ~-128 ~ ~128 air replace water
execute as @e[tag=waterLevel] at @s run fill ~ ~ ~ ~-128 ~ ~-128 air replace ice
execute as @e[tag=waterLevel] at @s run fill ~ ~ ~ ~128 ~ ~-128 air replace ice
execute as @e[tag=waterLevel] at @s run fill ~ ~ ~ ~128 ~ ~128 air replace ice
execute as @e[tag=waterLevel] at @s run fill ~ ~ ~ ~-128 ~ ~128 air replace ice

# Helper functions keep track of water level, move Marker)
execute as @e[tag=waterLevel] at @s run tp @s ~ ~-1 ~
scoreboard players remove waterLevel yLevel 1

# Ring a bell if in receding phase
execute as @a at @s if predicate isreceding run playsound block.bell.use ambient @s ~ ~ ~