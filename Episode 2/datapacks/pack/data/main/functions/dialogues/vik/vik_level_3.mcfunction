# Made by EOSand
# Vik dialogue when P has level 3 clearance

# Remove comparator
execute if score @p Timer matches 0 run setblock -1953 83 917 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"VIK ›››","color":"green","bold":true},{"text":" Hey there! Do you now have","color":"gray"},{"text":" level 3 clearance","color":"red"},{"text":"?","color":"gray"}]
execute if score @p Timer matches 0 run function main:dialogues/vik/vik_fx

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Finally, yes! Would you be able to help me out a bit now?","color":"gray"}]
execute if score @p Timer matches 60 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 120 run tellraw @p ["",{"text":"VIK ›››","color":"green","bold":true},{"text":" I now believe I should be able to. What question did you have again?","color":"gray"}]
execute if score @p Timer matches 120 run function main:dialogues/vik/vik_fx

execute if score @p Timer matches 180 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" I have heard some things regarding security key cards at","color":"gray"},{"text":" EXIST","color":"yellow"},{"text":", and I think they may have something to do with the electrical generators at","color":"gray"},{"text":" BluSci","color":"aqua"},{"text":" However, the generators require a passcode. Would you know anything about that?","color":"gray"}]
execute if score @p Timer matches 180 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 380 run tellraw @p ["",{"text":"VIK ›››","color":"green","bold":true},{"text":" Oh, indeed I do. My friends Andrew, Abdul, and I have managed to dig up some mysteries surrounding those very generators. We actually found hints to the passcodes!","color":"gray"}]
execute if score @p Timer matches 380 run function main:dialogues/vik/vik_fx

execute if score @p Timer matches 540 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" That's brilliant! Would you be willing to lend me one of the clues?","color":"gray"}]
execute if score @p Timer matches 540 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 600 run tellraw @p ["",{"text":"VIK ›››","color":"green","bold":true},{"text":" Instead of letting you off the hook so quickly, why don't we put some stakes into it?","color":"gray"}]
execute if score @p Timer matches 600 run function main:dialogues/vik/vik_fx

execute if score @p Timer matches 680 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Okay... What were you thinking?","color":"gray"}]
execute if score @p Timer matches 680 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 740 run tellraw @p ["",{"text":"VIK ›››","color":"green","bold":true},{"text":" My friends and I have little hobbies. Mine, in particular, is with rare gems. I have always been fascinated by their rarity and history. So I'll make you a deal. If you can bring me one of each of the rare gems, that is,","color":"gray"},{"text":" 1 Redstone","color":"aqua"},{"text":",","color":"gray"},{"text":" 1 Lapis Lazuli","color":"aqua"},{"text":",","color":"gray"},{"text":" 1 Diamond","color":"aqua"},{"text":",","color":"gray"},{"text":" 1 Emerald","color":"aqua"},{"text":",","color":"gray"},{"text":" 1 Quartz","color":"aqua"},{"text":", and","color":"gray"},{"text":" 1 Amethyst Shard","color":"aqua"},{"text":", then I will give you the clue. What do you say?","color":"gray"}]
execute if score @p Timer matches 740 run function main:dialogues/vik/vik_fx

execute if score @p Timer matches 1100 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" That might be a bit hard, but I'll do it!","color":"gray"}]
execute if score @p Timer matches 1100 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 1160 run tellraw @p ["",{"text":"VIK ›››","color":"green","bold":true},{"text":" Amazing! You only need to bring","color":"gray"},{"text":" 1","color":"aqua"},{"text":" of each, so don't worry about finding stacks of diamonds!","color":"gray"}]
execute if score @p Timer matches 1160 run function main:dialogues/vik/vik_fx

execute if score @p Timer matches 1240 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Thank goodness, I don't want to be caving for days.","color":"gray"}]
execute if score @p Timer matches 1240 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 1300 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

# Turn on repeating cmd block to check for quest items
execute if score @p Timer matches 1300 run data merge block -1950 83 920 {auto:1}

########################################
# Increment
function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 1301 run data merge block -1950 83 917 {auto:0}

# Change command for next dialogue
execute if score @p Timer matches 1301 run data merge block -1950 83 917 {Command:"function main:dialogues/vik/vik_reminder_2"}

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 1301 run data merge block -1950 83 922 {auto:1}

# Delete barrier wall
execute if score @p Timer matches 1301 run function main:dialogues/vik/vik_wall_destroy

# Reset Timer
execute if score @p Timer matches 1301 run function main:timer/reset
