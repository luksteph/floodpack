# Late-game chest
setblock ~ ~10 ~ minecraft:chest{LootTable:"lategamechest"} replace
summon firework_rocket ~ ~60 ~ {LifeTime:30,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;11743532],FadeColors:[I;11743532]}]}}}}