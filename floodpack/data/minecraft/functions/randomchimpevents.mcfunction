# Top layer of water turns to ice
execute as @e[tag=waterLevel] at @s if predicate icechance run fill ~64 ~ ~64 ~-64 ~ ~-64 ice replace water

# Chest spawns
execute as @e[tag=waterLevel] at @s if predicate chestchance unless predicate isthirdtrimester run function subfunctions/midgamechest
execute as @e[tag=waterLevel] at @s if predicate chestchance2 if predicate isthirdtrimester run function subfunctions/lategamechest

# Random entity spawns
execute as @e[tag=waterLevel] at @s if predicate guardianchance run summon guardian ~ ~ ~
execute as @e[tag=waterLevel] at @s if predicate slimechance run summon slime ~ ~ ~ {Size:20}
execute as @e[tag=waterLevel] at @s if predicate elderguardianchance run summon elder_guardian ~ ~ ~
