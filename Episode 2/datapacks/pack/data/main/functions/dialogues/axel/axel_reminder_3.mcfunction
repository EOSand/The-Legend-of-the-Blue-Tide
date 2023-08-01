# Made by EOSand
# Dr. Axel dialogue (super computer)
# KC lvl 3 (SC score set to 3)
# If P doesn't have items

# Remove comparator
execute if score @p Timer matches 0 run setblock -1971 61 949 bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" What were the things I need, again?","color":"gray"}]
execute if score @p Timer matches 0 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"DR. AXEL ›››","color":"dark_aqua","bold":true},{"text":" The items and configurations you need for the next clearence are:","color":"gray"},{"text":"\n 1. Upgraded CPU. \n 2. Upgraded RAM. \n 3. All 3 BluSci Generators and BluSci Coolant on.","color":"yellow"}]
execute if score @p Timer matches 60 run function main:dialogues/axel/axel_fx

execute if score @p Timer matches 220 run tellraw @p ["",{"text":"DR. AXEL ›››","color":"dark_aqua","bold":true},{"text":" Oh, and remember, the","color":"gray"},{"text":" overclocked supercomputer","color":"aqua"},{"text":" will allow you to travel quite a bit faster.","color":"gray"}]
execute if score @p Timer matches 220 run function main:dialogues/axel/axel_fx

# End of dialogue
execute if score @p Timer matches 320 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

########################################
# Increment
function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 321 run data merge block -1974 61 949 {auto:0}

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 321 run data merge block -1970 63 949 {auto:1}

# Delete barrier wall
execute if score @p Timer matches 321 run function main:dialogues/axel/axel_wall_destroy

# Reset Timer
execute if score @p Timer matches 321 run function main:timer/reset
