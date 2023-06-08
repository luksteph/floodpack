# Summon 5 chest candidate location markers
summon marker ~ ~ ~ {"Tags":[chestCandidate]}
summon marker ~ ~ ~ {"Tags":[chestCandidate]}
summon marker ~ ~ ~ {"Tags":[chestCandidate]}
summon marker ~ ~ ~ {"Tags":[chestCandidate]}
summon marker ~ ~ ~ {"Tags":[chestCandidate]}

# Spread out the location markers centered at 0,0; minimum distance of 128 apart; 100 block radius; under ylv 288; not respecting teams; all entities with chestcandidate tag
spreadplayers ~ ~ 128 100 under 288 false @e[tag=chestCandidate]

# Pick 3 random chest candidates to spawn a chest on
execute as @e[tag=chestCandidate,limit=3,sort=random] at @s run function chestspawns/midgamechest

# Announce chest locations
execute as @e[tag=chestCandidate] at @s if block ~ ~ ~ chest run tellraw @a ["",{"text":"Chest spawned at X:"},{"nbt":"Pos[0]","entity":"@s"},{"text":" Y:"},{"nbt":"Pos[1]","entity":"@s"},{"text":" Z:"},{"nbt":"Pos[2]","entity":"@s"}]

schedule function chestspawns/killcands 1s