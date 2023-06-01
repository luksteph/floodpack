# What happens if a player is determined to be under the floodwaters (checked in main)
# happens once every second
effect give @s slowness 2 0 true

# Depth-based damage
execute as @s if predicate damagedepth1 run damage @s 6
execute as @s if predicate damagedepth2 run damage @s 5
execute as @s if predicate damagedepth3 run damage @s 4
execute as @s if predicate damagedepth4 run damage @s 3
execute as @s if predicate damagedepth5 run damage @s 2
execute as @s if predicate damagedepth6 run damage @s 1