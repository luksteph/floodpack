# Functions at the end of the game
execute as @e[tag=waterLevel] at @s run summon firework_rocket ~ ~10 ~
title @a title ["Game ends in 60s!"]

schedule function subfunctions/postgame 60s