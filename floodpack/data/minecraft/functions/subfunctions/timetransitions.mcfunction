# (R) Notify players that the game has started, and the water will begin to recede
execute as @a at @s if predicate isreceding run playsound block.glass.break ambient @s ~ ~ ~
execute if predicate isreceding run tellraw @a ["",{"text":"PHASE R > ","bold":true},{"text":"Welcome to flood world. The water will now recede.","color":"gray"}]
execute if predicate isreceding run tellraw @a ["",{"text":"PHASE R > ","bold":true},{"text":"You can't hit anyone yet, but traps are encouraged.","color":"gray"}]

# (1) Notify players that the water will now rise and there are mob spawns incoming
execute as @a at @s if predicate isfirsttrimester run playsound entity.creeper.primed ambient @s ~ ~ ~
execute if predicate isfirsttrimester run tellraw @a ["",{"text":"PHASE 1 > ","bold":true},{"text":"The water is now rising. You may notice some wildlife in the water.","color":"gray"}]

# (2) Notify players that they will no longer respawn
execute as @a at @s if predicate issecondtrimester run playsound entity.wither.death ambient @s ~ ~ ~
execute as @a if predicate issecondtrimester run title @s subtitle {"text":"You will no longer respawn!","color":"white"}
execute as @a if predicate issecondtrimester run title @s title {"text":"BED DESTROYED!","color":"red","bold":true}

execute if predicate issecondtrimester run tellraw @a ["",{"text":"BED DESTRUCTION >","bold":true}," ",{"text":"Your bed was destroyed by","color":"gray"}," ",{"text":"oFinqls","color":"green"},{"text":"!","color":"gray"}]
execute if predicate issecondtrimester run tellraw @a ["",{"text":"PHASE 2 > ","bold":true},{"text":"But actually. You won't respawn anymore, good luck.","color":"gray"}]

# (2) Shrink worldborder to 128 block diameter over 3360 seconds
execute if predicate issecondtrimester run worldborder set 128 3360
execute if predicate issecondtrimester run gamerule keepInventory false

# (3) Notify players that phase 3, the final phase, has begun
execute as @a at @s if predicate isthirdtrimester run playsound ambient.cave ambient @s ~ ~ ~
execute if predicate isthirdtrimester run tellraw @a ["",{"text":"PHASE 3 > ","bold":true},{"text":"The end is nigh, the rain crisis is infinite, and an apple a day... big shoes.","color":"gray"}]
execute if predicate isthirdtrimester run tellraw @a ["",{"text":"PHASE 3 > ","bold":true},{"text":"You may now directly attack other players.","color":"gray"}]

# (3) Shrink worldborder to 16 block diameter over 300 seconds
execute if predicate isthirdtrimester run worldborder set 16 300
execute if predicate isthirdtrimester run team modify players friendlyFire true