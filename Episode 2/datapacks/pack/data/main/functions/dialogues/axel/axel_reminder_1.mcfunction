# Made by EOSand
# Dr. Axel dialogue (super computer)
# KC lvl 1 (SC score set to 1)
# If P doesn't have items

# Remove comparator
execute if score @p Timer matches 0 run setblock -1971 61 949 bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" What were the types of items I'm looking for again?","color":"gray"}]
execute if score @p Timer matches 0 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"DR. AXEL ›››","color":"dark_aqua","bold":true},{"text":" Ah, of course. The items you seek have these properties, respectively:","color":"gray"},{"text":"\n 1. A rare, golden, royal flower. \n 2. A vintage music disc. \n 3. An ammonite shell.","color":"yellow"}]
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

# Reset Timer
execute if score @p Timer matches 221 run function main:timer/reset
