# Made by EOSand
# Resets "HasDied" score

execute if score @p HasDied matches 1 run scoreboard players set @p HasDied 0
