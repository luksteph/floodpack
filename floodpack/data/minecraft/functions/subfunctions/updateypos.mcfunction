 # Store all players' y-level in yLevel objective (called by tick.json)
 execute as @a store result score @s yLevel run data get entity @s Pos[1]
 # could change this to be called less often if it's too laggy