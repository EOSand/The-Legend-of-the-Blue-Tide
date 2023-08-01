# Made by EOSand
# Abdul dialogue to remind P of level 3 clearance

# Remove comparator
execute if score @p Timer matches 0 run setblock -1953 81 917 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"ABDUL ›››","color":"green","bold":true},{"text":" Remember, I won't be able to help you until you have  ","color":"gray"},{"text":" level 3 clearance","color":"red"},{"text":"!","color":"gray"}]
execute if score @p Timer matches 0 run function main:dialogues/abdul/abdul_fx

execute if score @p Timer matches 60 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

########################################
# Increment
function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 61 run data merge block -1950 81 917 {auto:0}

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 61 run data merge block -1950 81 922 {auto:1}

# Delete barrier wall
execute if score @p Timer matches 61 run function main:dialogues/abdul/abdul_wall_destroy

# Reset Timer
execute if score @p Timer matches 61 run function main:timer/reset
