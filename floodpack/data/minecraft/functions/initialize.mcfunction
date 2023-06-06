# Set up
gamerule playersSleepingPercentage 25
gamerule doWeatherCycle false
gamerule doInsomnia false
worldborder center 0 0
worldborder set 256
weather clear
defaultgamemode survival
setworldspawn 0 120 0

# Create objectives
scoreboard objectives add dummy dummy
scoreboard objectives add yLevel dummy
scoreboard objectives add deaths deathCount
scoreboard objectives setdisplay sidebar yLevel

# Enum constants
scoreboard players set const5 dummy 5
scoreboard players set const15 dummy 15
scoreboard players set const20 dummy 20
scoreboard players set const35 dummy 35

# Create center entity
summon marker 0 64 0 {Tags:[waterLevel]}
scoreboard players set waterLevel yLevel 64

# Initial 0 to 64 fill
summon marker 0 -64 0 {Tags:[initialFill]}
scoreboard players set initialFill yLevel -64
function subfunctions/initialfill

# Run main function
function main