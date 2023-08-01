# Made by EOSand
# (7) 2nd ladders

# Obstacle
particle minecraft:poof -1749.25 81.0 813.5 0.5 2 0.5 0.01 30
particle minecraft:poof -1749.25 81.0 809.5 0.5 2 0.5 0.01 30
playsound minecraft:block.anvil.use block @p -1749.25 81.0 811.5
fill -1750 82 813 -1750 79 813 minecraft:ladder[facing=west]
fill -1750 82 809 -1750 79 809 minecraft:ladder[facing=west]

# Turn on next; turn this off
data modify block -1759 60 816 auto set value 1
data modify block -1759 58 816 auto set value 0
setblock -1759 58 815 minecraft:air