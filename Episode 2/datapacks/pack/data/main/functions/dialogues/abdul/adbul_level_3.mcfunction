# Made by EOSand
# Abdul dialogue when P has level 3 clearance

# Remove comparator
execute if score @p Timer matches 0 run setblock -1953 81 917 minecraft:bricks

execute if score @p Timer matches 0 run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Hey! I have","color":"gray"},{"text":" level 3 clearance","color":"red"},{"text":"!","color":"gray"}]
execute if score @p Timer matches 0 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"ABDUL ›››","color":"green","bold":true},{"text":" Perfect! So what can I do for you?","color":"gray"}]
execute if score @p Timer matches 60 run function main:dialogues/abdul/abdul_fx

execute if score @p Timer matches 120 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" I think my next task has something to do with the electrical generators at","color":"gray"},{"text":" BluSci","color":"aqua"},{"text":" each requiring a passcode.","color":"gray"}]
execute if score @p Timer matches 120 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 240 run tellraw @p ["",{"text":"ABDUL ›››","color":"green","bold":true},{"text":" Oh, I see. I do know a few things about mysterious passwords here. Maybe I can make you a deal?","color":"gray"}]
execute if score @p Timer matches 240 run function main:dialogues/abdul/abdul_fx

execute if score @p Timer matches 340 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Sure. What would that entail?","color":"gray"}]
execute if score @p Timer matches 340 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 380 run tellraw @p ["",{"text":"ABDUL ›››","color":"green","bold":true},{"text":" I, myself, love magic. Ever since I was a child, I was mesmerized by enchanting and potions and everything magical! For the longest time I've been seeking this one enchantment, in particular.","color":"gray"}]
execute if score @p Timer matches 380 run function main:dialogues/abdul/abdul_fx

execute if score @p Timer matches 580 run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Perhaps I can help you with that!","color":"gray"}]
execute if score @p Timer matches 580 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 620 run tellraw @p ["",{"text":"ABDUL ›››","color":"green","bold":true},{"text":" That would be amazing! If you can find me a","color":"gray"},{"text":" Mending Book","color":"yellow"},{"text":" and","color":"gray"},{"text":" 16 Lapis Lazuli","color":"blue"},{"text":", then I will give you a passcode hint. What do you think?","color":"gray"}]
execute if score @p Timer matches 620 run function main:dialogues/abdul/abdul_fx

execute if score @p Timer matches 720 run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Awesome! I'll find them for you!","color":"gray"}]
execute if score @p Timer matches 720 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 760 run tellraw @p ["",{"text":"ABDUL ›››","color":"green","bold":true},{"text":" Sweet! I've heard rumors that they are found in an abandoned mineshaft underneath the city. Best of luck!","color":"gray"}]
execute if score @p Timer matches 760 run function main:dialogues/abdul/abdul_fx

execute if score @p Timer matches 860 run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Alright, I'll look there. Thanks, Abdul!","color":"gray"}]
execute if score @p Timer matches 860 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 920 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

# Turn on repeating cmd block to check for quest items
execute if score @p Timer matches 920 run data merge block -1950 81 920 {auto:1}

########################################
# Increment
function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 921 run data merge block -1950 81 917 {auto:0}

# Change command for next dialogue
execute if score @p Timer matches 921 run data merge block -1950 81 917 {Command:"function main:dialogues/abdul/abdul_reminder_2"}

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 921 run data merge block -1950 81 922 {auto:1}

# Delete barrier wall
execute if score @p Timer matches 921 run function main:dialogues/abdul/abdul_wall_destroy

# Reset Timer
execute if score @p Timer matches 921 run function main:timer/reset
