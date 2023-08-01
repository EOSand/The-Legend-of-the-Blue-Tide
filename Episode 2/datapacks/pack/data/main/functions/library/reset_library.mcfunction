# Made by EOSand
# Resets library after P gets item

# Reset blocks
fill -1781 75 811 -1781 77 805 minecraft:birch_leaves[persistent=true] replace minecraft:slime_block
fill -1781 78 815 -1781 78 807 minecraft:bookshelf replace minecraft:honey_block
fill -1780 81 799 -1771 75 799 minecraft:air
fill -1771 74 808 -1769 78 809 minecraft:air
fill -1771 74 808 -1769 74 809 minecraft:smooth_stone_slab
fill -1772 77 818 -1771 84 818 minecraft:air
fill -1764 74 815 -1760 78 801 minecraft:air
fill -1759 75 805 -1759 77 805 minecraft:birch_leaves[persistent=true]
fill -1753 75 805 -1753 77 805 minecraft:birch_leaves[persistent=true]
fill -1759 74 805 -1753 74 805 minecraft:smooth_stone_slab[type=double] replace minecraft:sticky_piston
fill -1753 73 805 -1759 73 805 minecraft:spruce_planks
fill -1750 79 813 -1750 82 809 minecraft:air
fill -1758 81 799 -1768 86 799 minecraft:air
fill -1768 86 799 -1758 86 799 minecraft:spruce_planks
fill -1765 85 801 -1765 85 809 minecraft:air

# Turn off loops (books and launchers)
data modify block -1769 58 808 auto set value 0
data modify block -1769 59 808 auto set value 0
data modify block -1767 58 808 auto set value 0
data modify block -1767 60 808 auto set value 0
fill -1769 58 810 -1767 61 810 minecraft:bricks replace minecraft:redstone_block

# Reset beams
setblock -1765 58 807 minecraft:redstone_block

# Remove effects
effect clear @p