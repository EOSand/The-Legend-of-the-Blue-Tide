# Made by ESand
# Dr. Bright 3 dialogue
# Directs P to the failed Limbo mission

# Replace gold
execute if score @p Timer matches 0 run setblock -1959 95 920 minecraft:white_concrete
execute if score @p Timer matches 0 run setblock -1959 96 920 minecraft:air

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":"Hello again, Dr. Bright. Dr. Axel said you wanted to see me once I had level 3 clearance?","color":"gray"}] 
execute if score @p Timer matches 0 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 100 run tellraw @p ["",{"text":"DR. BRIGHT ›››","color":"dark_aqua","bold":true},{"text":" Yes, precisely. The next task will be a little bit different from what you've already done. Are you ready?","color":"gray"}]
execute if score @p Timer matches 100 run function main:dialogues/bright/bright_fx

execute if score @p Timer matches 200 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Well, I don't really have a choice, so, I guess I'm ready.","color":"gray"}]
execute if score @p Timer matches 200 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 260 run tellraw @p ["",{"text":"DR. BRIGHT ›››","color":"dark_aqua","bold":true},{"text":" Perfect. The two manifestations of key cards thus far have put our super computer in great distress, so continuing to use it may be detrimental to the laboratory. With this, the only viable solution would be to completely overclock the machine.","color":"gray"}]
execute if score @p Timer matches 260 run function main:dialogues/bright/bright_fx

execute if score @p Timer matches 500 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" How is that even possible? I can understand if it's a small PC that you'd want to overclock, but how would that even work on an industrial-scale computer?","color":"gray"}]
execute if score @p Timer matches 500 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 660 run tellraw @p ["",{"text":"DR. BRIGHT ›››","color":"dark_aqua","bold":true},{"text":" It's actually a lot simpler than you may think. In order to successfully overlock it, you need a few things: ","color":"gray"},{"text":"increased electrical power, increased machine coolant, and upgraded hardware.","color":"aqua"}]
execute if score @p Timer matches 660 run function main:dialogues/bright/bright_fx

execute if score @p Timer matches 820 run tellraw @p ["",{"text":"DR. BRIGHT ›››","color":"dark_aqua","bold":true},{"text":" The first two can be achieved in Monscollis, so you shouldn't worry too much about those. Since you now have level 3 clearance, you can access the ","color":"gray"},{"text":"BluSci Electrical Plant ","color":"aqua"},{"text":"just outside this building. There, you can easily configure the ","color":"gray"},{"text":"generators ","color":"aqua"},{"text":"and ","color":"gray"},{"text":"coolant","color":"aqua"},{"text":".","color":"gray"}]
execute if score @p Timer matches 820 run function main:dialogues/bright/bright_fx

execute if score @p Timer matches 1080 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Wait, what about the hardware?","color":"gray"}]
execute if score @p Timer matches 1080 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 1120 run tellraw @p ["",{"text":"DR. BRIGHT ›››","color":"dark_aqua","bold":true},{"text":" Yeah, that's the difficult part. Unfortunately, manually creating sufficient hardware here at the laboratory would take weeks to complete. However, there may be a solution, particularly outside the city.","color":"gray"}]
execute if score @p Timer matches 1120 run function main:dialogues/bright/bright_fx

execute if score @p Timer matches 1320 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" What exactly do you mean, Dr. Bright?","color":"gray"}]
execute if score @p Timer matches 1320 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 1380 run tellraw @p ["",{"text":"DR. BRIGHT ›››","color":"dark_aqua","bold":true},{"text":" When the ","color":"gray"},{"text":"Limbo ","color":"red"},{"text":"first ravaged the planet, ","color":"gray"},{"text":"EXIST ","color":"yellow"},{"text":"and ","color":"gray"},{"text":"BluSci ","color":"aqua"},{"text":"sent out a few scientists to research the phenomenon.","color":"gray"}]
execute if score @p Timer matches 1380 run function main:dialogues/bright/bright_fx

execute if score @p Timer matches 1480 run tellraw @p ["",{"text":"DR. BRIGHT ›››","color":"dark_aqua","bold":true},{"text":" Unfortunately, days, weeks, and months passed without any sign or contact from the personnel, so we declared the mission failed.","color":"gray"}]
execute if score @p Timer matches 1480 run function main:dialogues/bright/bright_fx

execute if score @p Timer matches 1600 run tellraw @p ["",{"text":"DR. BRIGHT ›››","color":"dark_aqua","bold":true},{"text":" The shuttle the personnel took had hardware that could be used to overclock our super computer. The only way to continue with this venture is for you to go to the site of the failed mision and retrieve the hardware.","color":"gray"}]
execute if score @p Timer matches 1600 run function main:dialogues/bright/bright_fx

execute if score @p Timer matches 1780 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Hang on a second, if trained personnel did not survive the mission, how do you expect me to go to the site, get the hardware, and make it back to Monscollis in one piece?!","color":"gray"}]
execute if score @p Timer matches 1780 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 1940 run tellraw @p ["",{"text":"DR. BRIGHT ›››","color":"dark_aqua","bold":true},{"text":" Well, we don't have any other option. It would behoove you to get proper equipment and gear, particularly at least a ","color":"gray"},{"text":"hazmat suit","color":"aqua"},{"text":", which you can find at the marketplace. Once you are prepared, please make your way to the teleportation pod in the laboratory. Best of luck, ","color":"gray","extra":[{"selector":"@p"},{"text":"."}]}]
execute if score @p Timer matches 1940 run function main:dialogues/bright/bright_fx

execute if score @p Timer matches 2200 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Alright, Dr. Bright. This will be hard but I've never turned down a challenge before!","color":"gray"}]
execute if score @p Timer matches 2200 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

# Enable teleportation to the crash site
execute if score @p Timer matches 2200 run setblock -1987 59 928 minecraft:gold_block
execute if score @p Timer matches 2200 run setblock -1987 60 928 minecraft:stone_button[face=floor]

# Spawn shulker boxes for CPU and RAM
execute if score @p Timer matches 2200 run setblock -1993 62 949 minecraft:white_shulker_box[facing=north]{CustomName:'{"text":"Secondary CPU Capsule"}'}
execute if score @p Timer matches 2200 run setblock -1993 62 951 minecraft:white_shulker_box[facing=south]{CustomName:'{"text":"Secondary RAM Capsule"}'}

execute if score @p Timer matches 2300 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

########################################

function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 2301 run data merge block -1972 79 937 {auto:0}

# Reset Timer
execute if score @p Timer matches 2301 run function main:timer/reset
