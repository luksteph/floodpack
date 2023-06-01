# called by main
scoreboard players add fakePlayer yLevel 1
teleport @e[tag=waterLevel] ~ ~1 ~
#title @a title [{"text":"Water is rising!","color":"dark_red","bold":true}]

# fill worldborder with water
execute as @e[tag=waterLevel] at @s run fill ~64 ~ ~64 ~-64 ~ ~-64 water keep