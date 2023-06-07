# Top layer of water changes
execute as @e[tag=waterLevel] at @s if predicate icechance run fill ~64 ~ ~64 ~-64 ~ ~-64 ice replace water

# Chest spawns
execute as @e[tag=waterLevel] at @s if predicate midgamechestchance unless predicate isthirdtrimester run function chestspawns/spawnmgchests
execute as @e[tag=waterLevel] at @s if predicate lategamechestchance if predicate isthirdtrimester run function chestspawns/lategamechest
execute if predicate defmobchance run give @r salmon{display:{Name:'[{"text":"LE FISCHE","italic":false}]',Lore:['[{"text":"au chocolat","italic":false}]']},Enchantments:[{id:knockback,lvl:8}]} 1

# Random entity spawns
execute as @e[tag=waterLevel] at @s unless predicate isreceding unless predicate isfirsttrimester if predicate guardianchance run summon guardian ~ ~ ~
execute as @e[tag=waterLevel] at @s unless predicate isreceding unless predicate isfirsttrimester if predicate slimechance run summon slime ~ ~ ~ {Size:20}
execute as @e[tag=waterLevel] at @s unless predicate isreceding unless predicate isfirsttrimester if predicate elderguardianchance run summon elder_guardian ~ ~ ~
execute as @e[tag=waterLevel] at @s unless predicate isreceding unless predicate isfirsttrimester if predicate slimechance run summon minecraft:chicken ~ ~ ~ {Passengers:[{id:"zombie",IsBaby:1,CustomName:'[{"text":"BOB"}]',Health:20,CanPickUpLoot:1b,LeftHanded:1b,PersistenceRequired:1b,HandItems:[{id:"diamond_sword",tag:{Enchantments:[{id:fire_aspect,lvl:1},{id:sharpness,lvl:5}]},Count:1}],HandDropChances:[0.50f],ArmorItems:[{id:diamond_boots,tag:{Enchantments:[{id:protection,lvl:2}]},Count:1},{id:diamond_leggings,tag:{Enchantments:[{id:protection,lvl:1}]},Count:1},{id:diamond_chestplate,tag:{Enchantments:[{id:protection,lvl:1}]},Count:1},{id:diamond_helmet,tag:{Enchantments:[{id:protection,lvl:2}]},Count:1}],ArmorDropChances:[0.50f,0.50f,0.50f,0.50f],Attributes:[{Name:"generic.max_health",Base:20f}]}]}
execute as @r at @s if predicate defmobchance unless predicate isreceding unless predicate isfirsttrimester run summon minecraft:skeleton_horse ~20 ~10 ~ {SkeletonTrap:1}
execute as @r at @s if predicate defmobchance unless predicate isreceding unless predicate isfirsttrimester run summon minecraft:vex ~ ~10 ~ {Passengers:[{id:creeper,Fuse:1,BlastRadius:5}]}