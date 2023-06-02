# Functions at the end of the game
execute as @e[tag=waterLevel] at @s run summon firework_rocket ~ ~10 ~
title @a title ["Water is falling in 30s!"]

schedule function subfunctions/postgame 30s