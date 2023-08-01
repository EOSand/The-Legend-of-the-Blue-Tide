# Made by EOSand
# (5) Books

# Checkpoint
execute if score @p Timer matches 0 run tellraw @p {"text":"CHECKPOINT REACHED","color":"dark_gray","italic":true}

# Obstacle
function main:timer/increment
execute if score @p Timer matches 5 run particle minecraft:poof -1761.5 77.0 808.5 2 2 7 0.01 200
execute if score @p Timer matches 5 run setblock -1769 58 810 minecraft:redstone_block

# Turn on next; turn this off
execute if score @p Timer matches 5.. run data modify block -1761 60 816 auto set value 1
execute if score @p Timer matches 5.. run data modify block -1761 58 816 auto set value 0
execute if score @p Timer matches 5.. run setblock -1761 58 815 minecraft:air

# Reset
execute if score @p Timer matches 5.. run data modify block -1761 58 813 auto set value 0
execute if score @p Timer matches 5.. run function main:timer/reset