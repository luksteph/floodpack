# Set up
gamerule playersSleepingPercentage 25
gamerule doWeatherCycle false
worldborder center 0 0
worldborder set 128
weather clear
defaultgamemode survival
setworldspawn 0 120 0

# Create objectives
scoreboard objectives add dummy dummy
scoreboard objectives add yLevel dummy

# Enum constants
scoreboard players set const10 dummy 10
scoreboard players set const30 dummy 30
scoreboard players set const320 dummy 320
scoreboard players set const1200 dummy 1200
scoreboard players set const5470 dummy 5470
scoreboard players set const22500 dummy 22500
scoreboard players set constn22500 dummy -22500

# Create center entity
summon marker 0 64 0 {Tags:[waterLevel]}
scoreboard players set waterLevel yLevel 64

#secondary fill ent temp
summon marker 0 -64 0 {Tags:[initialFill]}
scoreboard players set initialFill yLevel -64
function subfunctions/initialfill

# Run main function
function main

#schedule updateypos here if mspt is too high