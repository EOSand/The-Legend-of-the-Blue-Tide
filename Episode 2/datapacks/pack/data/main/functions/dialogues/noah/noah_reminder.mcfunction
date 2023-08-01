# Made by EOSand
# Reminder Noah dialogue (Dark Oak House)

# Remove comparator
execute if score @p Timer matches 0 run setblock -1905 56 794 minecraft:bricks

execute if score @p Timer matches 0 run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Hey Noah, did I get everything done?","color":"gray"}]
execute if score @p Timer matches 0 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"NOAH ›››","color":"green","bold":true},{"text":" Hi again! It doesn't look entirely prestine yet. Maybe just make sure that you've","color":"gray"},{"text":" trimmed all the grass","color":"aqua"},{"text":" around my house and that the","color":"gray"},{"text":" jacuzzi has all its bubble jets replaced","color":"aqua"},{"text":"?","color":"gray"}]
execute if score @p Timer matches 60 run function main:dialogues/noah/noah_fx

# End of dialogue
execute if score @p Timer matches 160 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

########################################
# Increment
execute run function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 161 run data merge block -1902 56 794 {auto:0}

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 161 run data merge block -1902 56 797 {auto:1}

# Delete barrier wall
execute if score @p Timer matches 161 run function main:dialogues/noah/noah_wall_destroy

# Reset Timer
execute if score @p Timer matches 161 run function main:timer/reset
