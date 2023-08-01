# Made by EOSand
# Spawnpoint anchor

execute if score @p Spawn matches 1 at @p run spawnpoint @p ~ ~ ~
execute if score @p Spawn matches 1 run title @p actionbar {"text":"Spawnpoint Set","color":"yellow"}
execute if score @p Spawn matches 1 run scoreboard players set @p Spawn 0
