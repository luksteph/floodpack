# Change Water Level
scoreboard players operation waterlvstore dummy -= const5470 dummy
scoreboard players operation waterlvstore dummy *= waterlvstore dummy
scoreboard players operation waterlvstore dummy %= constn22500 dummy
scoreboard players operation waterlvstore dummy += const320 dummy

# Rain 
execute unless predicate israining run weather thunder