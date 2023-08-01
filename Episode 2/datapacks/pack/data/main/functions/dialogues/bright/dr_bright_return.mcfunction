# Made by ESand
# Dr. Bright dialogue
# Called from choosing the blue pill then deciding to go back

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"DR. BRIGHT ›››","color":"dark_aqua","bold":true},{"text":" Ah, I see you changed your mind!","color":"gray"}]
execute if score @p Timer matches 0 run function main:dialogues/bright/bright_fx

execute if score @p Timer matches 40 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Yeah, I thought about it and I realized I would regret not seeing where this path takes me.","color":"gray"}]
execute if score @p Timer matches 40 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 120 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" So now that I am here, where should I start?","color":"gray"}]
execute if score @p Timer matches 120 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 170 run tellraw @p ["",{"text":"DR. BRIGHT ›››","color":"dark_aqua","bold":true},{"text":" I knew that in order to stop ","color":"gray"},{"text":"EXIST's ","color":"yellow"},{"text":"mind-controlling acts, I needed to destroy the beacons.","color":"gray"}]
execute if score @p Timer matches 170 run function main:dialogues/bright/bright_fx

execute if score @p Timer matches 250 run tellraw @p ["",{"text":"DR. BRIGHT ›››","color":"dark_aqua","bold":true},{"text":" So, I tried looking for a way to get into the beacon control rooms, but I needed the highest level of security clearance to do so.","color":"gray"}]
execute if score @p Timer matches 250 run function main:dialogues/bright/bright_fx

execute if score @p Timer matches 390 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Since you don't have the clearance, how am I supposed to get it?","color":"gray"}]
execute if score @p Timer matches 390 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 440 run tellraw @p ["",{"text":"DR. BRIGHT ›››","color":"dark_aqua","bold":true},{"text":" There are only two ways to get a higher level of clearance: either get promoted by ","color":"gray"},{"text":"EXIST","color":"yellow"},{"text":", or atomically reconstruct the card itself.","color":"gray"}]
execute if score @p Timer matches 440 run function main:dialogues/bright/bright_fx

execute if score @p Timer matches 520 run tellraw @p ["",{"text":"DR. BRIGHT ›››","color":"dark_aqua","bold":true},{"text":" I've taken the liberty to stash a level 1 clearance key card and some other materials beneath my desk. Pease take them.","color":"gray"}]
execute if score @p Timer matches 520 run function main:dialogues/bright/bright_fx

execute if score @p Timer matches 610 run tellraw @p ["",{"text":"DR. BRIGHT ›››","color":"dark_aqua","bold":true},{"text":" Also, my team and I have created a super computer to aid in the reconstruciton process for the key cards. Please head down to the bottom floor and talk to Dr. Axel after this.","color":"gray"}]
execute if score @p Timer matches 610 run function main:dialogues/bright/bright_fx

execute if score @p Timer matches 750 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Okay, I will!","color":"gray"}]
execute if score @p Timer matches 750 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 770 run tellraw @p ["",{"text":"DR. BRIGHT ›››","color":"dark_aqua","bold":true},{"text":" Remember, once the generators are off, all damage will be un-done and everything will go back to the way it was.","color":"gray"}]
execute if score @p Timer matches 770 run function main:dialogues/bright/bright_fx

execute if score @p Timer matches 860 run tellraw @p ["",{"text":"DR. BRIGHT ›››","color":"dark_aqua","bold":true},{"text":" I'm counting on you.","color":"gray"}]
execute if score @p Timer matches 860 run function main:dialogues/bright/bright_fx

# Give P KC level 1 tag
execute if score @p Timer matches 860 run tag @p add KC_1

# Remove barriers in front of main floor elevator
execute if score @p Timer matches 860 run fill -2003 89 929 -2003 91 928 air

# Remove barriers around Dr. Bright
execute if score @p Timer matches 860 run function main:dialogues/bright/bright_wall_destroy

# Turn on Axel cmd block
execute if score @p Timer matches 860 run data merge block -1970 61 949 {auto:1}

execute if score @p Timer matches 900 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

########################################

function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 901 run data merge block -1975 79 939 {auto:0}

# Reset Timer
execute if score @p Timer matches 901 run function main:timer/reset
