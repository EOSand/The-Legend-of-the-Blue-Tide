# Made by EOSand
# (9) Single Beam

# Obstacle
particle minecraft:poof -1761.5 84.5 799.5 5 3 0.5 0.01 150
playsound minecraft:block.end_gateway.spawn block @p -1761.5 84.5 799.5 0.5
fill -1758 86 799 -1768 86 799 minecraft:air
setblock -1768 86 799 minecraft:spruce_stairs[facing=west]
setblock -1768 85 799 minecraft:spruce_slab[type=top]
setblock -1767 85 799 minecraft:spruce_stairs[facing=east,half=top]
fill -1766 84 799 -1766 83 799 minecraft:spruce_planks
setblock -1765 83 799 minecraft:spruce_planks
setblock -1765 82 799 minecraft:spruce_slab[type=top]
setblock -1764 82 799 minecraft:spruce_stairs[facing=west,half=top]
setblock -1762 81 799 minecraft:spruce_planks
setblock -1761 81 799 minecraft:spruce_stairs[facing=west]
setblock -1759 85 799 minecraft:spruce_planks
setblock -1758 85 799 minecraft:spruce_stairs[facing=west,half=top]
setblock -1758 86 799 minecraft:spruce_stairs[facing=east]

# Turn on next; turn this off
data modify block -1757 58 816 auto set value 1
data modify block -1759 60 816 auto set value 0
setblock -1759 60 815 minecraft:air