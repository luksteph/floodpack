# Choose a winner!
execute as @a[predicate=!hasdied] run tellraw @a ["",{"selector":"@s"},{"text":" is a winner!"}]
execute as @a[predicate=!hasdied] run summon firework_rocket ~ ~10 ~

# Misc
title @a title ["Game ends in 60s!"]
schedule function subfunctions/postgame 60s