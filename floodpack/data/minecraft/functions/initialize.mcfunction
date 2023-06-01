# Set up
gamerule doMobSpawning false
gamerule playersSleepingPercentage 25
gamerule doWeatherCycle false
worldborder center 0 0
worldborder set 128
weather clear
defaultgamemode survival

# Create objectives
scoreboard objectives add timeDummy dummy
scoreboard objectives add moonPhase dummy
scoreboard objectives add yLevel dummy

# Enum constants
scoreboard players set const135000 timeDummy 135000
scoreboard players set const30 timeDummy 30
scoreboard players set const1200 timeDummy 1200
scoreboard players set const22500 timeDummy 22500
scoreboard players set const10 timeDummy 10
scoreboard players set const5470 timeDummy 5470
scoreboard players set constn22500 timeDummy -22500
scoreboard players set const320 timeDummy 320

# Skip to second day, thus avoiding a full moon on day 1
time add 24000
scoreboard players add night moonPhase 3

# Create center entity
summon marker 0 -64 0 {Tags:[waterLevel]}

# Run main function
function main
schedule function subfunctions/mooncheck 10t