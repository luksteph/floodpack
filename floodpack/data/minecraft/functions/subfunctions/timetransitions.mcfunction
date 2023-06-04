# (R) Notify players that the game has started, and the water will begin to recede
execute as @a at @s run playsound block.glass.break ambient @s ~ ~ ~
tellraw @a ["",{"text":"PHASE R > ","bold":true},{"text":"Welcome to flood world. The water will now recede.","color":"gray"}]

# (1) Notify players that the water will now rise and there are mob spawns incoming
execute as @a at @s run playsound entity.creeper.primed ambient @s ~ ~ ~
tellraw @a ["",{"text":"PHASE 1 > ","bold":true},{"text":"The water is now rising. You may notice some wildlife floating in the water.","color":"gray"}]

# (2) Notify players that they will no longer respawn
execute as @a at @s run playsound entity.wither.death ambient @s ~ ~ ~
execute as @a run title @s subtitle {"text":"You will no longer respawn!","color":"white"}
execute as @a run title @s title {"text":"BED DESTROYED!","color":"red","bold":true}

tellraw @a ["",{"text":"BED DESTRUCTION >","bold":true}," ",{"text":"Your bed was destroyed by","color":"gray"}," ",{"text":"oFinqls","color":"green"},{"text":"!","color":"gray"}]
tellraw @a ["",{"text":"PHASE 2 > ","bold":true},{"text":"But actually. You won't respawn anymore, good luck.","color":"gray"}]

# (2) Shrink worldborder to 128 block diameter over 3360 seconds
worldborder set 128 3360

# (3) Notify players that phase 3, the final phase, has begun
execute as @a at @s run playsound ambient.cave ambient @s ~ ~ ~
tellraw @a ["",{"text":"PHASE 3 > ","bold":true},{"text":"The end is nigh. Now is a great time to fight another player.","color":"gray"}]

# (3) Shrink worldborder to 16 block diameter over 300 seconds
worldborder set 16 300