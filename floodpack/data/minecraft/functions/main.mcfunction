# Add 1 to dummy objective every second, and reset after 30 seconds
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
execute as @a at @s if predicate isunderflood run schedule function subfunctions/swimmingdmg 15t

# Random chimp event
schedule function randomchimpevents 10t

# Loop
schedule function main 1s