# called by main
# Helper functions (keep track of water level, move Marker)
scoreboard players add waterLevel yLevel 1
execute as @e[tag=waterLevel] at @s run tp @s ~ ~1 ~

# Raise water level and ring a bell
execute as @e[tag=waterLevel] at @s run fill ~64 ~ ~64 ~-64 ~ ~-64 water keep
execute as @a at @s run playsound block.bell.resonate ambient @s ~ ~ ~