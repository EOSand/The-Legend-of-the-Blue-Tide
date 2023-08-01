# Made by EOSand
# Andrew dialogue to remind P of quest items

# Remove comparator
execute if score @p Timer matches 0 run setblock -1953 79 917 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"ANDREW ›››","color":"green","bold":true},{"text":" You don't have the","color":"gray"},{"text":" Drops of Limbo","color":"dark_red"},{"text":"! Remember, I desire","color":"gray"},{"text":" 4","color":"dark_red"},{"text":" for the hint!","color":"gray"}]
execute if score @p Timer matches 0 run function main:dialogues/andrew/andrew_fx

execute if score @p Timer matches 80 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

########################################
# Increment
function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 81 run data merge block -1950 79 917 {auto:0}

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 81 run data merge block -1950 79 922 {auto:1}

# Delete barrier wall
execute if score @p Timer matches 81 run function main:dialogues/andrew/andrew_wall_destroy

# Reset Timer
execute if score @p Timer matches 81 run function main:timer/reset
