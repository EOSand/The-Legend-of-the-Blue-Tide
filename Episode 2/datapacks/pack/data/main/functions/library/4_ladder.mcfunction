# Made by EOSand
# (4) 1st Ladder

# Obstacle
function main:timer/increment
execute if score @p Timer matches 5 run playsound minecraft:block.anvil.use block @p -1771.5 79.0 819.5
execute if score @p Timer matches 5 run fill -1772 77 818 -1772 80 818 minecraft:ladder[facing=north]
execute if score @p Timer matches 5 run particle poof -1771.5 79.00 818.5 0.5 2 0.5 0.01 20
execute if score @p Timer matches 10 run fill -1771 81 818 -1771 82 818 minecraft:ladder[facing=north]
execute if score @p Timer matches 10 run particle poof -1770.5 82.0 818.5 0.5 1 0.5 0.01 20

# Turn on next; turn this off
execute if score @p Timer matches 10.. run data modify block -1761 58 816 auto set value 1
execute if score @p Timer matches 10.. run data modify block -1763 60 816 auto set value 0
execute if score @p Timer matches 10.. run setblock -1763 60 815 minecraft:air

# Reset
execute if score @p Timer matches 10.. run data modify block -1763 60 813 auto set value 0
execute if score @p Timer matches 10.. run function main:timer/reset