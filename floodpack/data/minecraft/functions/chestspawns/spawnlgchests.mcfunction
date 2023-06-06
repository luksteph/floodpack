# Summon 5 chest candidate location markers
summon marker ~ ~ ~ {"Tags":[chestCandidate]}
summon marker ~ ~ ~ {"Tags":[chestCandidate]}
summon marker ~ ~ ~ {"Tags":[chestCandidate]}
summon marker ~ ~ ~ {"Tags":[chestCandidate]}
summon marker ~ ~ ~ {"Tags":[chestCandidate]}

# Spread out the location markers centered at 0,0; minimum distance of 10 apart; 20 block radius; not respecting teams; all entities with chestcandidate tag
spreadplayers ~ ~ 10 20 false @e[tag=chestCandidate]

# Pick 3 random chest candidates to spawn a chest on
execute as @e[tag=chestCandidate,limit=3,sort=random] at @s run function chestspawns/lategamechest

# Remove the non-selected candidates
execute as @e[tag=chestCandidate] at @s unless block ~ ~ ~ chest run kill @s

#fix this bullshit later (supposed to announce locations of the chests)
execute as @e[tag=chestCandidate] run tellraw @a [{"selector":"@s"},{"text":"Chest spawned at X:"},{"nbt":"Pos[0]","entity":"@s"},{"text":" Y:"},{"nbt":"Pos[1]","entity":"@s"},{"text":" Z:"},{"nbt":"Pos[2]","entity":"@s"}]

# Get rid of candidate location markers
execute as @e[tag=chestCandidate] run kill @s