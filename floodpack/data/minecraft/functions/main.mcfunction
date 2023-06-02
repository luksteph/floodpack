# Add 1 to dummy objective every second
scoreboard players add playTimeSec dummy 1

# Flood the world
scoreboard players operation waterLevelTimer dummy = playTimeSec dummy
execute if predicate isreceding run function timebased/receding
execute if predicate isfirsttrimester run function timebased/firsttrimester
execute if predicate issecondtrimester run function timebased/secondtrimester
execute if predicate isthirdtrimester run function timebased/thirdtrimester
execute unless predicate isreceding if score waterLevelTimer dummy matches 0 run schedule function flood 5t
execute if predicate isreceding if score waterLevelTimer dummy matches 0 run schedule function drain 5t

# Damage players who are in the water
execute as @a at @s if predicate isunderflood run function subfunctions/swimmingdmg

# Random chimp event
schedule function randomchimpevents 10t

# Send players to spectator if they died after the first trimester
execute as @a unless predicate issecondtrimester unless predicate isthirdtrimester run scoreboard players set @s deaths 0
execute as @a[predicate=hasdied] run gamemode spectator

# Loop
execute unless predicate isaftergame run schedule function main 1s

# After-game handling
execute if predicate isaftergame run schedule function subfunctions/endgame 3s