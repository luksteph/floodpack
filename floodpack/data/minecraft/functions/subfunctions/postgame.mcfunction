# Drain area completely
function subfunctions/completedrain

# Remove Markers (initialFill and waterLevel)
kill @e[type=marker]

# Set everyone's gamemode
gamemode spectator @a