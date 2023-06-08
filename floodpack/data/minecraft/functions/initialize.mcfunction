# Set up
gamerule playersSleepingPercentage 25
gamerule doWeatherCycle false
gamerule doInsomnia false
gamerule keepInventory true
worldborder center 0 0
worldborder set 256
weather clear
defaultgamemode survival
setworldspawn 0 120 0

# Create objectives
scoreboard objectives add dummy dummy
scoreboard objectives add yLevel dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add Health health
scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy
scoreboard objectives setdisplay sidebar yLevel
scoreboard objectives setdisplay belowName Health

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

# Teams setup
team add players "Players"
team modify players friendlyFire false

# Run main function
function main