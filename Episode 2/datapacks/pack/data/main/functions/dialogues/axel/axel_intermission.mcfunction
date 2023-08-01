# Made by EOSand
# Dr. Axel dialogue (super computer)
# KC lvl 3 (SC score set to 3)
# Right after P upgrade to level 3

# Remove comparator
execute if score @p Timer matches 0 run setblock -1971 61 949 bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" What's the next task?","color":"gray"}]
execute if score @p Timer matches 0 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"DR. AXEL ›››","color":"dark_aqua","bold":true},{"text":" Dr. Bright informed me that your next task will involve something a little bit different. Please head to his office immediately.","color":"gray"}]
execute if score @p Timer matches 60 run function main:dialogues/axel/axel_fx

# End of dialogue
execute if score @p Timer matches 180 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

# Turn on Dr Bright detection cmd block and gold in Dr Bright office
# execute if score @p Timer matches 60 run data merge block -1969 79 937 {auto:1}
# execute if score @p Timer matches 60 run setblock -1959 95 920 minecraft:gold_block
# execute if score @p Timer matches 60 run setblock -1959 96 920 minecraft:stone_button[face=floor,facing=north]

########################################
# Increment
function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 181 run data merge block -1974 61 949 {auto:0}

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 181 run data merge block -1970 63 949 {auto:1}

# Delete barrier wall
execute if score @p Timer matches 181 run function main:dialogues/axel/axel_wall_destroy

# Reset Timer
execute if score @p Timer matches 181 run function main:timer/reset
