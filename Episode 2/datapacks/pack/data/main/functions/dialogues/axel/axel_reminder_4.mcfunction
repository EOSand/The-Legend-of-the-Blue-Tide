# Made by EOSand
# Dr. Axel dialogue (super computer)
# KC lvl 4 (SC score set to 4)
# If P doesn't have items

# Remove comparator
execute if score @p Timer matches 0 run setblock -1971 61 949 bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" What are the last three items that I must obtain, Dr. Axel?","color":"gray"}]
execute if score @p Timer matches 0 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"DR. AXEL ›››","color":"dark_aqua","bold":true},{"text":" The final three items are going to be difficult to find as they're all relics of Monscollis:","color":"gray"},{"text":"\n 1. A totem. \n 2. A tome. \n 3. A star.","color":"yellow"},{"text":"\n Best of luck, ","color":"gray","extra":[{"selector":"@p"},{"text":"."}]}]
execute if score @p Timer matches 60 run function main:dialogues/axel/axel_fx

# End of dialogue
execute if score @p Timer matches 220 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

########################################
# Increment
function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 221 run data merge block -1974 61 949 {auto:0}

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 221 run data merge block -1970 63 949 {auto:1}

# Delete barrier wall
execute if score @p Timer matches 221 run function main:dialogues/axel/axel_wall_destroy

# Change command for detecting items
execute if score @p Timer matches 221 run data merge block -1970 64 949 {Command:"execute if score @p Totem matches 1 if score @p Tome matches 1 if score @p Limbo_Star matches 1 run data merge block -1974 61 949 {Command:\"function main:dialogues/axel/axel_items_4\"}"}

# Reset Timer
execute if score @p Timer matches 221 run function main:timer/reset
