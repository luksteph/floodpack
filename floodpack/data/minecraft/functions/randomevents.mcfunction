# Top layer of water changes
execute as @e[tag=waterLevel] at @s if predicate icechance run fill ~64 ~ ~64 ~-64 ~ ~-64 ice replace water
execute as @e[tag=waterLevel] at @s if predicate icechance run fill ~64 ~ ~64 ~-64 ~ ~-64 lava replace water

# Chest spawns
execute as @e[tag=waterLevel] at @s if predicate midgamechestchance unless predicate isthirdtrimester run function chestspawns/spawnmgchests
execute as @e[tag=waterLevel] at @s if predicate lategamechestchance if predicate isthirdtrimester run function chestspawns/lategamechest
give @r salmon{Enchantments:[{id:knockback,lvl:30}]}

# Random entity spawns
execute as @e[tag=waterLevel] at @s if predicate guardianchance run summon guardian ~ ~ ~
execute as @e[tag=waterLevel] at @s if predicate slimechance run summon slime ~ ~ ~ {Size:20}
execute as @e[tag=waterLevel] at @s if predicate elderguardianchance run summon elder_guardian ~ ~ ~
execute as @e[tag=waterLevel] at @s if predicate slimechance run summon minecraft:chicken ~ ~ ~ {Passengers:[{id:"zombie",IsBaby:1,CustomName:'[{"text":"BOB"}]',Health:50,CanPickUpLoot:1b,LeftHanded:1b,PersistenceRequired:1b,HandItems:[{id:"diamond_sword",tag:{Enchantments:[{id:fire_aspect,lvl:1},{id:sharpness,lvl:5}]},Count:1}],HandDropChances:[0.00f],ArmorItems:[{id:diamond_boots,tag:{Enchantments:[{id:protection,lvl:2}]},Count:1},{id:diamond_leggings,tag:{Enchantments:[{id:protection,lvl:1}]},Count:1},{id:diamond_chestplate,tag:{Enchantments:[{id:protection,lvl:1}]},Count:1},{id:diamond_helmet,tag:{Enchantments:[{id:protection,lvl:2}]},Count:1}],ArmorDropChances:[0.00f,0.00f,0.00f,0.00f],Attributes:[{Name:"generic.max_health",Base:50f}]}]}
summon skeleton_horse
summon lightning_bolt
execute as @s at @s run summon minecraft:vex ~ ~ ~10 {Attributes:[{Name:"minecraft:generic.follow_range",Base:50d}],Passengers:[{id:creeper,Fuse:1,BlastRadius:5}]}

