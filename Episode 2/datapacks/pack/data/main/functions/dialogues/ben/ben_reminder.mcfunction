# Made by EOSand
# Reminder Ben dialogue (Spruce House)

# Remove comparator
execute if score @p Timer matches 0 run setblock -1905 60 794 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Hey Ben, so what exactly did you need?","color":"gray"}]
execute if score @p Timer matches 0 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"BEN ›››","color":"green","bold":true},{"text":" Please make sure that the","color":"gray"},{"text":" lawn is trimmed","color":"aqua"},{"text":" and","color":"gray"},{"text":" the garden","color":"aqua"},{"text":" is fully planted, too!","color":"gray"}]
execute if score @p Timer matches 60 run function main:dialogues/ben/ben_fx

# End of dialogue
execute if score @p Timer matches 140 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

########################################
# Increment
execute run function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 141 run data merge block -1902 60 794 {auto:0}

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 141 run data merge block -1902 60 797 {auto:1}

# Delete barrier wall
execute if score @p Timer matches 141 run function main:dialogues/ben/ben_wall_destroy

# Reset Timer
execute if score @p Timer matches 141 run function main:timer/reset
