 # Store all players' y-level in yLevel objective (called by tick.json)
 execute as @a store result score @s yLevel run data get entity @s Pos[1]

# Store all chestCandidate locations
 execute as @e[tag=chestCandidate] store result score @s PosX run data get entity @s Pos[0]
 execute as @e[tag=chestCandidate] store result score @s PosY run data get entity @s Pos[1]
 execute as @e[tag=chestCandidate] store result score @s PosZ run data get entity @s Pos[2]