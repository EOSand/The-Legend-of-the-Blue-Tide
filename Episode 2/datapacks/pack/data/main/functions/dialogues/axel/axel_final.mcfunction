# Made by EOSand
# Dr. Axel dialogue (super computer)
# KC lvl 4 (SC score set to 5)

# Remove comparator
execute if score @p Timer matches 0 run setblock -1971 61 949 bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Now what's the next task?","color":"gray"}]
execute if score @p Timer matches 0 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"DR. AXEL ›››","color":"dark_aqua","bold":true},{"text":" Since you now have level 5 clearance, you should be able to intervene the generator room. Please, go!","color":"gray"}]
execute if score @p Timer matches 60 run function main:dialogues/axel/axel_fx

# End of dialogue
execute if score @p Timer matches 120 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

########################################
# Increment
function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 121 run data merge block -1974 61 949 {auto:0}

# Delete barrier wall
execute if score @p Timer matches 121 run function main:dialogues/axel/axel_wall_destroy

# Reset Timer
execute if score @p Timer matches 121 run function main:timer/reset
