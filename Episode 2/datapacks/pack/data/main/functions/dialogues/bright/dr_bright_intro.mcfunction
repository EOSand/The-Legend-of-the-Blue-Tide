# Made by ESand
# Dr. Bright 1 dialogue

# Remove comparator
execute if score @p Timer matches 0 run setblock -1963 79 939 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"DR. BRIGHT ›››","color":"dark_aqua","bold":true},{"text":" Well isn't it just a pleasure to see you!","color":"gray"}]
execute if score @p Timer matches 0 run function main:dialogues/bright/bright_fx

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" I'm sorry but who are you and why do you need to talk to me?","color":"gray"}]
execute if score @p Timer matches 60 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 140 run tellraw @p ["",{"text":"DR. BRIGHT ›››","color":"dark_aqua","bold":true},{"text":" My apologies, I'm sure you're very confused and concerned about what is happening at the moment, so let me take a second to explain the situation to you, ok?","color":"gray"}]
execute if score @p Timer matches 140 run function main:dialogues/bright/bright_fx

execute if score @p Timer matches 300 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" If you have answers to my questions then I'm all for it.","color":"gray"}]
execute if score @p Timer matches 300 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 380 run tellraw @p ["",{"text":"DR. BRIGHT ›››","color":"dark_aqua","bold":true},{"text":" Very well, then","color":"gray"}]
execute if score @p Timer matches 380 run function main:dialogues/bright/bright_fx

# Begin montage
execute if score @p Timer matches 440 run setblock -1963 79 937 redstone_block

########################################

function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 441 run data merge block -1966 79 939 {auto:0}

# Reset Timer
execute if score @p Timer matches 441 run function main:timer/reset
