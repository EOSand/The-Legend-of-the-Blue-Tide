# Made by EOSand
# First Ben dialogue (Spruce House)

# Remove comparator
execute if score @p Timer matches 0 run setblock -1905 60 794 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Hey Ben, how's it going?","color":"gray"}]
execute if score @p Timer matches 0 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 40 run tellraw @p ["",{"text":"BEN ›››","color":"green","bold":true},{"text":" Welcome to my abode, ","color":"gray","extra":[{"selector":"@p"},{"text":"! It's a wonderful day here in Monscollis, isn't it?"}]}]
execute if score @p Timer matches 40 run function main:dialogues/ben/ben_fx

execute if score @p Timer matches 100 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" It certainly is! Wait, happened to your garden?","color":"gray"}]
execute if score @p Timer matches 100 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 120 run tellraw @p ["",{"text":"BEN ›››","color":"green","bold":true},{"text":" Oh, yeah, you've probably noticed all the overgrowth in this part of the city. It's completely taken over my crops and I don't know what else I can do!","color":"gray"}]
execute if score @p Timer matches 120 run function main:dialogues/ben/ben_fx

execute if score @p Timer matches 240 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Perhaps I can help out! There could be something at the marketplace that could help, or maybe the garden just needs a thorough cleaning!","color":"gray"}]
execute if score @p Timer matches 240 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 320 run tellraw @p ["",{"text":"BEN ›››","color":"green","bold":true},{"text":" Yeah, that's true! If you wanted to go to the marketplace to find something, that'd be awesome! I have some stuff inside that could be of assistance, too, so take whatever you need!","color":"gray"}]
execute if score @p Timer matches 320 run function main:dialogues/ben/ben_fx

execute if score @p Timer matches 480 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Perfect! I'll see what I can do and get back to you when it's done!","color":"gray"}]
execute if score @p Timer matches 480 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 520 run tellraw @p ["",{"text":"BEN ›››","color":"green","bold":true},{"text":" Awesome! Thank you so much!","color":"gray"}]
execute if score @p Timer matches 520 run function main:dialogues/ben/ben_fx

# End of dialogue
execute if score @p Timer matches 560 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

# Turn on repeating cmd block to check if quest done
execute if score @p Timer matches 560 run data merge block -1902 60 796 {auto:1}

########################################
# Increment
execute run function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 561 run data merge block -1902 60 794 {auto:0}

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 561 run data merge block -1902 60 797 {auto:1}

# Change command
execute if score @p Timer matches 561 run data modify block -1902 60 794 Command set value "function main:dialogues/ben/ben_reminder"

# Delete barrier wall
execute if score @p Timer matches 561 run function main:dialogues/ben/ben_wall_destroy

# Reset Timer
execute if score @p Timer matches 561 run function main:timer/reset
