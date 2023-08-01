# Made by EOSand
# Dr. Axel dialogue (super computer)
# KC lvl 1 (SC score set to 1)
# If P has items

# Remove comparator
execute if score @p Timer matches 0 run setblock -1971 61 949 bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" I believe I've found all the items, Dr. Axel.","color":"gray"}]
execute if score @p Timer matches 0 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"DR. AXEL ›››","color":"dark_aqua","bold":true},{"text":" Brilliant! Well go ahead and put them in the machine!","color":"gray"}]
execute if score @p Timer matches 60 run function main:dialogues/axel/axel_fx

# End of dialogue
execute if score @p Timer matches 120 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

########################################
# Increment
execute run function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 121 run data merge block -1974 61 949 {auto:0}

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 121 run data merge block -1970 63 949 {auto:1}

# Delete barrier wall
execute if score @p Timer matches 121 run function main:dialogues/axel/axel_wall_destroy

# Reset Timer
execute if score @p Timer matches 121 run function main:timer/reset
