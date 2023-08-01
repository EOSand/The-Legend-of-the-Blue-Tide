# Made by EOSand
# (3) Slab Stairs

# Obstacle
function main:timer/increment
execute if score @p Timer matches 5 run fill -1771 74 808 -1769 74 809 minecraft:air
execute if score @p Timer matches 5 run setblock -1771 74 808 minecraft:smooth_stone_slab
execute if score @p Timer matches 5 run particle minecraft:poof -1770.5 74.5 808.5 0.5 0.5 0.5 0.01 10
execute if score @p Timer matches 5 run playsound minecraft:block.stone.place block @p -1770.5 74.5 808.5
execute if score @p Timer matches 10 run setblock -1771 75 809 minecraft:smooth_stone_slab
execute if score @p Timer matches 10 run particle minecraft:poof -1770.5 75.5 809.5 0.5 0.5 0.5 0.01 10
execute if score @p Timer matches 10 run playsound minecraft:block.stone.place block @p -1770.5 75.5 809.5
execute if score @p Timer matches 15 run setblock -1769 76 809 minecraft:smooth_stone_slab
execute if score @p Timer matches 15 run particle minecraft:poof -1768.5 76.5 809.5 0.5 0.5 0.5 0.01 10
execute if score @p Timer matches 15 run playsound minecraft:block.stone.place block @p -1768.5 76.5 809.5
execute if score @p Timer matches 20 run setblock -1769 77 808 minecraft:smooth_stone_slab
execute if score @p Timer matches 20 run particle minecraft:poof -1768.5 77.5 808.5 0.5 0.5 0.5 0.01 10
execute if score @p Timer matches 20 run playsound minecraft:block.stone.place block @p -1768.5 77.5 808.5
execute if score @p Timer matches 25 run setblock -1771 78 808 minecraft:smooth_stone_slab
execute if score @p Timer matches 25 run particle minecraft:poof -1770.5 78.5 808.5 0.5 0.5 0.5 0.01 10
execute if score @p Timer matches 25 run playsound minecraft:block.stone.place block @p -1770.5 78.5 808.5

# Turn on next; turn this off
execute if score @p Timer matches 25.. run data modify block -1763 60 816 auto set value 1
execute if score @p Timer matches 25.. run data modify block -1763 58 816 auto set value 0
execute if score @p Timer matches 25.. run setblock -1763 58 815 minecraft:air

# Reset
execute if score @p Timer matches 25.. run data modify block -1763 58 813 auto set value 0
execute if score @p Timer matches 25.. run function main:timer/reset