# Made by EOSand
# Reminder Luc dialogue (Acacia House)

# Remove comparator
execute if score @p Timer matches 0 run setblock -1905 58 794 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Hello again, is everything complete?","color":"gray"}]
execute if score @p Timer matches 0 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"LUC ›››","color":"green","bold":true},{"text":" Hey, ","color":"gray","extra":[{"selector":"@p"}]},{"text":", I think you still have some things left to finish. Just make sure you","color":"gray"},{"text":" trimmed all the grass","color":"aqua"},{"text":" and that","color":"gray"},{"text":" the jets are replaced in the pool","color":"aqua"},{"text":"!","color":"gray"}]
execute if score @p Timer matches 60 run function main:dialogues/luc/luc_fx

# End of dialogue
execute if score @p Timer matches 160 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

########################################
# Increment
execute run function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 161 run data merge block -1902 58 794 {auto:0}

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 161 run data merge block -1902 58 797 {auto:1}

# Delete barrier wall
execute if score @p Timer matches 161 run function main:dialogues/luc/luc_wall_destroy

# Reset Timer
execute if score @p Timer matches 161 run function main:timer/reset
