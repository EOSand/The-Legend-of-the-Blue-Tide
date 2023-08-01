# Made by EOSand
# Felix dialogue (Museum)

# Remove comparator
execute if score @p Timer matches 0 run setblock -1766 62 862 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Hey Felix, what are you looking at?","color":"gray"}]
execute if score @p Timer matches 0 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 40 run tellraw @p ["",{"text":"FELIX ›››","color":"green","bold":true},{"text":" It's crazy to think that these were some of the first items to be added to Minecraft, isn't it? It's been more than a decade and people tend to overlook the immense amount of changes and additions that have been made.","color":"gray"}]
execute if score @p Timer matches 40 run function main:dialogues/felix/felix_fx

execute if score @p Timer matches 140 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Yeah that's true. There have been dozens of blocks and items added to the game, so do you think there's a reason why the museum chose to display these items and blocks, in particular?","color":"gray"}]
execute if score @p Timer matches 140 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 240 run tellraw @p ["",{"text":"FELIX ›››","color":"green","bold":true},{"text":" That's a great question. I have no idea but there are a lot of conspiracies in Monscollis, so who knows!","color":"gray"}]
execute if score @p Timer matches 240 run function main:dialogues/felix/felix_fx

execute if score @p Timer matches 300 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Conspiracies? What do you mean?","color":"gray"}]
execute if score @p Timer matches 300 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 340 run tellraw @p ["",{"text":"FELIX ›››","color":"green","bold":true},{"text":" Oh, nothing really important, honestly. Just that some people say that there's a connection between these relics and some","color":"gray"},{"text":" configurations in the sewer","color":"aqua"},{"text":", but I have no idea.","color":"gray"}]
execute if score @p Timer matches 340 run function main:dialogues/felix/felix_fx

execute if score @p Timer matches 480 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" The sewer?! How could these possibly be connected?!","color":"gray"}]
execute if score @p Timer matches 480 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 520 run tellraw @p ["",{"text":"FELIX ›››","color":"green","bold":true},{"text":" Dude, I don't know, I just hear things from the public. All I've heard is that they're somehow connected. Maybe because these items originally had","color":"gray"},{"text":" numeric ID's","color":"aqua"},{"text":" or something, I don't know.","color":"gray"}]
execute if score @p Timer matches 520 run function main:dialogues/felix/felix_fx

execute if score @p Timer matches 680 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" How interesting...","color":"gray"}]
execute if score @p Timer matches 680 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

# End of dialogue
execute if score @p Timer matches 700 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

########################################
# Increment
function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 701 run data merge block -1769 62 862 {auto:0}

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 701 run data merge block -1765 64 862 {auto:1}

# Delete barrier wall
execute if score @p Timer matches 701 run function main:dialogues/felix/felix_wall_destroy

# Reset Timer
execute if score @p Timer matches 701 run function main:timer/reset
