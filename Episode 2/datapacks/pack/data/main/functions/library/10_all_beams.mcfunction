# Made by EOSand
# (10) All beams

# Checkpoint
tellraw @p {"text":"CHECKPOINT REACHED","color":"dark_gray","italic":true}

# Obstacle
particle poof -1761.5 86.5 809.0 6 0.5 9 0.01 300
playsound minecraft:block.end_gateway.spawn block @p -1761.5 86.5 809.0 0.5
setblock -1765 58 810 minecraft:redstone_block

# Turn this off
data modify block -1757 58 816 auto set value 0
setblock -1757 58 815 minecraft:air