# Add 1 to dummy objective every second, and reset after 30 seconds
scoreboard players add playTimeSec dummy 1

# Flood the world
scoreboard players operation waterLevelTimer dummy = playTimeSec dummy
execute if predicate isreceding run function timebased/receding
execute if predicate isfirsttrimester run function timebased/firsttrimester
execute if predicate issecondtrimester run function timebased/secondtrimester
execute if predicate isthirdtrimester run function timebased/thirdtrimester
execute unless predicate isreceding if score waterLevelTimer dummy matches 0 run function flood
execute if predicate isreceding if score waterLevelTimer dummy matches 0 run function drain

# Damage players who are in the water
execute as @a at @s if predicate isunderflood run function subfunctions/swimmingdmg

# Loop
schedule function main 1s