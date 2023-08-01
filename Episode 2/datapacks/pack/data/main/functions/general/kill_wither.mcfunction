# Made by EOSand
# Kills wither if P dies

execute if score @p HasDied matches 1 if entity @p[tag=EXIST_Lab] run kill @e[type=minecraft:wither]
