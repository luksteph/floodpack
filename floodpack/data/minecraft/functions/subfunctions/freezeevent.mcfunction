# Perform freeze over full 256x map
execute unless predicate isthirdtrimester run fill ~ ~ ~ ~-128 ~ ~-128 water keep
execute unless predicate isthirdtrimester run fill ~ ~ ~ ~128 ~ ~-128 water keep
execute unless predicate isthirdtrimester run fill ~ ~ ~ ~128 ~ ~128 water keep
execute unless predicate isthirdtrimester run fill ~ ~ ~ ~-128 ~ ~128 water keep

# Perform freeze over smaller map
execute if predicate isthirdtrimester run fill ~64 ~ ~64 ~-64 ~ ~-64 ice replace water