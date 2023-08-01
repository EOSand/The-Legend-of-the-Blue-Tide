# Made by EOSand
# Vik dialogue to remind P of level 3 clearance

# Remove comparator
execute if score @p Timer matches 0 run setblock -1953 83 917 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"VIK ›››","color":"green","bold":true},{"text":" You can't expect me to help you without","color":"gray"},{"text":" level 3 clearance","color":"red"},{"text":" now, don't get greedy!","color":"gray"}]
execute if score @p Timer matches 0 run function main:dialogues/vik/vik_fx

execute if score @p Timer matches 80 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

########################################
# Increment
function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 81 run data merge block -1950 83 917 {auto:0}

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 81 run data merge block -1950 83 922 {auto:1}

# Delete barrier wall
execute if score @p Timer matches 81 run function main:dialogues/vik/vik_wall_destroy

# Reset Timer
execute if score @p Timer matches 81 run function main:timer/reset
