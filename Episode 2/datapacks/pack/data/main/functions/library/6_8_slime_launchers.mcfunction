# Made by EOSand
# (6 & 8) Slime Launches

# Obstacle
particle minecraft:poof -1758.5 76.0 805.5 0.5 2 0.5 0.01 40
particle minecraft:poof -1752.5 76.0 805.5 0.5 2 0.5 0.01 40
fill -1759 77 805 -1753 77 805 minecraft:air replace minecraft:birch_leaves
fill -1759 76 805 -1753 75 805 minecraft:slime_block replace minecraft:birch_leaves
fill -1759 74 805 -1753 74 805 minecraft:sticky_piston[facing=up] replace minecraft:smooth_stone_slab[type=double]
fill -1767 61 810 -1767 60 810 minecraft:redstone_block

# Turn on next; turn this off
data modify block -1759 58 816 auto set value 1
data modify block -1761 60 816 auto set value 0
setblock -1761 60 815 minecraft:air