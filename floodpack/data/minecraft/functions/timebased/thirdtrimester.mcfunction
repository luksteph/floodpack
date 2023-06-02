# Change Water Level
scoreboard players operation waterLevelTimer dummy -= const5470 dummy
scoreboard players operation waterLevelTimer dummy *= waterLevelTimer dummy
scoreboard players operation waterLevelTimer dummy %= constn22500 dummy
scoreboard players operation waterLevelTimer dummy += const320 dummy

# Rain 
execute unless predicate israining run weather thunder