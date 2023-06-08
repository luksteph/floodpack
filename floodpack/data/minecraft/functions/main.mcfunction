# Add 1 to dummy objective every second
scoreboard players add playTimeSec dummy 1

# Flood the world
scoreboard players operation waterLevelTimer dummy = playTimeSec dummy

execute if predicate isreceding run function waterlvcalc/receding
execute if predicate isfirsttrimester run function waterlvcalc/firsttrimester
execute if predicate issecondtrimester run function waterlvcalc/secondtrimester
execute if predicate isthirdtrimester run function waterlvcalc/thirdtrimester

execute unless predicate isreceding if score waterLevelTimer dummy matches 0 run schedule function flood 5t
execute if predicate isreceding if score waterLevelTimer dummy matches 0 run schedule function drain 5t

# Announce phases and modify game to match
execute if score playTimeSec dummy matches 1 run function subfunctions/timetransitions
execute if score playTimeSec dummy matches 321 run function subfunctions/timetransitions
execute if score playTimeSec dummy matches 2561 run function subfunctions/timetransitions
execute if score playTimeSec dummy matches 5921 run function subfunctions/timetransitions

# Damage players who are in the water
execute as @a at @s if predicate isunderflood run function subfunctions/swimmingdmg
execute as @e[type=frog] at @s run effect give @a[distance=..10] dolphins_grace 10 0 true

# Random events
schedule function randomevents 10t

# Send players to spectator if they died after the first trimester
execute as @a unless predicate issecondtrimester unless predicate isthirdtrimester run scoreboard players set @s deaths 0
execute as @a[predicate=hasdied] run gamemode spectator

# Loop
execute unless predicate isaftergame run schedule function main 1s

# After-game handling
execute if predicate isaftergame run schedule function subfunctions/endgame 3s