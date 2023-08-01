# Made by EOSand
# (1) P on 1st chandelier: leaves -> slime, bookshelf -> honey

# Obstacle
particle minecraft:poof -1780.5 76.5 811.5 0.5 1.5 0.5 0.01 50
particle minecraft:poof -1780.5 76.5 805.5 0.5 1.5 0.5 0.01 50
fill -1781 75 811 -1781 77 805 minecraft:slime_block replace minecraft:birch_leaves
playsound minecraft:block.slime_block.place block @p -1780.5 78.0 811.5
playsound minecraft:block.slime_block.place block @p -1780.5 78.0 805.5
particle minecraft:poof -1780.5 78.5 814.5 0.5 0.5 1.5 0 50
particle minecraft:poof -1780.5 78.5 808.5 0.5 0.5 1.5 0 50
fill -1781 78 815 -1781 78 807 minecraft:honey_block replace minecraft:bookshelf
playsound minecraft:honey_block.place block @p -1780.5 79.0 814.5
playsound minecraft:honey_block.place block @p -1780.5 79.0 808.5

# Turn on next; turn this off
data modify block -1765 60 816 auto set value 1
data modify block -1765 58 816 auto set value 0
setblock -1765 58 815 minecraft:air