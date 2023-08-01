# Made by EOSand
# Dr. Axel dialogue (super computer)

# Remove comparator
execute if score @p Timer matches 0 run setblock -1971 61 949 bricks

# First encounter (SC score unset)
execute if score @p Timer matches 0 run tellraw @p ["",{"text":"DR. AXEL >>>","color":"dark_aqua","bold":true},{"text":" Welcome, ","color":"gray","extra":[{"selector":"@p"}]},{"text":", to the","color":"gray"},{"text":" BluSci Super Computer","color":"aqua"},{"text":". Here is where you'll be able to atomically reconstruct your key cards to increase security clearance levels.","color":"gray"}]
execute if score @p Timer matches 0 run function main:dialogues/axel/axel_fx

execute if score @p Timer matches 160 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" How does it work?","color":"gray"}]
execute if score @p Timer matches 160 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 200 run tellraw @p ["",{"text":"DR. AXEL ›››","color":"dark_aqua","bold":true},{"text":" Of course. The super computer has two access points: ","color":"gray"},{"text":"INPUT ","color":"aqua"},{"text":"and ","color":"gray"},{"text":"OUTPUT","color":"aqua"},{"text":".","color":"gray"}]
execute if score @p Timer matches 200 run function main:dialogues/axel/axel_fx

execute if score @p Timer matches 280 run tellraw @p ["",{"text":"DR. AXEL ›››","color":"dark_aqua","bold":true},{"text":" To use it, you first put the key card and necessary items inside the ","color":"gray"},{"text":"INPUT ","color":"aqua"},{"text":"capsule.","color":"gray"}]
execute if score @p Timer matches 280 run function main:dialogues/axel/axel_fx

execute if score @p Timer matches 380 run tellraw @p ["",{"text":"DR. AXEL ›››","color":"dark_aqua","bold":true},{"text":" Next, you click the ","color":"gray"},{"text":"DETECT RECIPE ","color":"green"},{"text":"sign to ensure you have the correct ingredients.","color":"gray"}]
execute if score @p Timer matches 380 run function main:dialogues/axel/axel_fx

execute if score @p Timer matches 460 run tellraw @p ["",{"text":"DR. AXEL ›››","color":"dark_aqua","bold":true},{"text":" If you have the correct items, a lever will pop up, that, when pulled, will initiate the reconstruction process. Once complete, your new key card can be retrieved from the","color":"gray"},{"text":" OUTPUT","color":"aqua"},{"text":" capsule.","color":"gray"}]
execute if score @p Timer matches 460 run function main:dialogues/axel/axel_fx

execute if score @p Timer matches 660 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Okay, it seems pretty straightforward. What do you mean about \"items\" that need to go in the input capsule along with the key card?","color":"gray"}]
execute if score @p Timer matches 660 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 780 run tellraw @p ["",{"text":"DR. AXEL ›››","color":"dark_aqua","bold":true},{"text":" The machine cannot simply reconstruct the key card at will. Instead, it needs a catalyst of sorts to aid in the operation. Therefore, you will need to search for items in order to successfully reconstruct the card.","color":"gray"}]
execute if score @p Timer matches 780 run function main:dialogues/axel/axel_fx

execute if score @p Timer matches 980 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Alright, I can manage that. What are the first items I need to find?","color":"gray"}]
execute if score @p Timer matches 980 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 1040 run tellraw @p ["",{"text":"DR. AXEL ›››","color":"dark_aqua","bold":true},{"text":" Given that you have a level 1 key card, our research has concluded that the first items you need to find have the following properties:","color":"gray"},{"text":"\n 1. A rare, golden, royal flower. \n 2. A vintage music disc. \n 3. An ammonite shell.","color":"yellow"}]
execute if score @p Timer matches 1040 run function main:dialogues/axel/axel_fx

execute if score @p Timer matches 1240 run tellraw @p ["",{"text":"DR. AXEL ›››","color":"dark_aqua","bold":true},{"text":" Please feel free to return if you forget what the items are or, if you find them, then we can initiate the machine. Best of luck, ","color":"gray","extra":[{"selector":"@p"},{"text":"."}]}]
execute if score @p Timer matches 1240 run function main:dialogues/axel/axel_fx

# End of dialogue
execute if score @p Timer matches 1340 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

########################################
# Increment
execute run function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 1341 run data merge block -1974 61 949 {auto:0}

# Change command
execute if score @p Timer matches 1341 run data modify block -1974 61 949 Command set value "function main:dialogues/axel/axel_reminder_1"

# Set supercomputer command
execute if score @p Timer matches 1341 run data merge block -1979 61 942 {auto:1}

# Increase SC score
# execute if score @p Timer matches 1341 run scoreboard players set @p SC 1

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 1341 run data merge block -1970 63 949 {auto:1}

# Delete barrier wall
execute if score @p Timer matches 1341 run function main:dialogues/axel/axel_wall_destroy

# Reset Timer
execute if score @p Timer matches 1341 run function main:timer/reset
