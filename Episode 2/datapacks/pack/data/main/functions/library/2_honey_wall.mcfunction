# Made by EOSand
# (2) Honey Wall

# Obstacle
function main:timer/increment
execute if score @p Timer matches 5 run fill -1779 81 799 -1776 81 799 minecraft:honey_block
execute if score @p Timer matches 5 run particle minecraft:block honey_block -1777.0 81.5 799.5 2.0 0.5 0.5 0 200
execute if score @p Timer matches 5 run playsound minecraft:block.honey_block.place block @p -1777.0 81.5 799.5
execute if score @p Timer matches 10 run fill -1780 80 799 -1775 80 799 minecraft:honey_block
execute if score @p Timer matches 10 run particle minecraft:block honey_block -1777.0 80.5 799.5 2.0 0.5 0.5 0 200
execute if score @p Timer matches 10 run playsound minecraft:block.honey_block.place block @p -1777.0 80.5 799.5
execute if score @p Timer matches 15 run fill -1779 79 799 -1773 79 799 minecraft:honey_block
execute if score @p Timer matches 15 run particle minecraft:block honey_block -1776.5 79.5 799.5 2.0 0.5 0.5 0 200
execute if score @p Timer matches 15 run playsound minecraft:block.honey_block.place block @p -1776.5 79.5 799.5
execute if score @p Timer matches 20 run fill -1778 78 799 -1772 78 799 minecraft:honey_block
execute if score @p Timer matches 20 run particle minecraft:block honey_block -1775.5 78.5 799.5 2.0 0.5 0.5 0 200
execute if score @p Timer matches 20 run playsound minecraft:block.honey_block.place block @p -1775.5 78.5 799.5
execute if score @p Timer matches 25 run fill -1777 77 799 -1771 77 799 minecraft:honey_block
execute if score @p Timer matches 25 run particle minecraft:block honey_block -1774.5 77.5 799.5 2.0 0.5 0.5 0 200
execute if score @p Timer matches 25 run playsound minecraft:block.honey_block.place block @p -1774.5 77.5 799.5
execute if score @p Timer matches 30 run fill -1775 76 799 -1771 76 799 minecraft:honey_block
execute if score @p Timer matches 30 run particle minecraft:block honey_block -1773.5 76.5 799.5 2.0 0.5 0.5 0 200
execute if score @p Timer matches 30 run playsound minecraft:block.honey_block.place block @p -1773.5 76.5 799.5
execute if score @p Timer matches 35 run fill -1773 75 799 -1771 75 799 minecraft:honey_block
execute if score @p Timer matches 35 run particle minecraft:block honey_block -1772.5 75.5 799.5 2.0 0.5 0.5 0 200
execute if score @p Timer matches 35 run playsound minecraft:block.honey_block.place block @p -1772.5 76.5 799.5

# Turn on next; turn this off
execute if score @p Timer matches 35.. run data modify block -1763 58 816 auto set value 1
execute if score @p Timer matches 35.. run data modify block -1765 60 816 auto set value 0
execute if score @p Timer matches 35.. run setblock -1765 60 815 minecraft:air

# Reset
execute if score @p Timer matches 35.. run data modify block -1765 60 813 auto set value 0
execute if score @p Timer matches 35.. run function main:timer/reset