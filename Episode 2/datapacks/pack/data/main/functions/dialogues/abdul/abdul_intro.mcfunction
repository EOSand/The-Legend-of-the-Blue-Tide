# Made by EOSand
# First Abdul Dialogue

# Remove comparator
execute if score @p Timer matches 0 run setblock -1953 81 917 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"ABDUL ›››","color":"green","bold":true},{"text":" Hey ","color":"gray","extra":[{"selector":"@p"},{"text":"!"}]},{"text":" Welcome to the","color":"gray"},{"text":" Main Street Commons","color":"aqua"},{"text":"!","color":"gray"}]
execute if score @p Timer matches 0 run function main:dialogues/abdul/abdul_fx

execute if score @p Timer matches 60 run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Hi Abdul, I'm just walking around the town right now, any landmarks or things of importance about Monscollis that I should know about?","color":"gray"}]
execute if score @p Timer matches 60 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 160 run tellraw @p ["",{"text":"ABDUL ›››","color":"green","bold":true},{"text":" Actually, yeah! Monscollis has a really efficient monorail system that can bring you across the city in seconds! Behind me is the","color":"gray"},{"text":" Main Street Station","color":"aqua"},{"text":", which connects to the","color":"gray"},{"text":" EXIST Headquarters Station","color":"aqua"},{"text":" and the","color":"gray"},{"text":" Downtown Station","color":"aqua"},{"text":". Feel free to ride it free of charge!","color":"gray"}]
execute if score @p Timer matches 160 run function main:dialogues/abdul/abdul_fx

execute if score @p Timer matches 420 run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Awesome, I surely will. By the way, do you know anything about security clearance key cards?","color":"gray"}]
execute if score @p Timer matches 420 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 520 run tellraw @p ["",{"text":"ABDUL ›››","color":"green","bold":true},{"text":" You mean upgrading them? I have heard rumors about a machine that","color":"gray"},{"text":" BluSci","color":"aqua"},{"text":" has which can upgrade security cards. Is that what you're talking about?","color":"gray"}]
execute if score @p Timer matches 520 run function main:dialogues/abdul/abdul_fx

execute if score @p Timer matches 660 run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Kind of. I know about the machine but I'm more confused with how I'm supposed to actually upgrade the cards.","color":"gray"}]
execute if score @p Timer matches 660 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 740 run tellraw @p ["",{"text":"ABDUL ›››","color":"green","bold":true},{"text":" Oh okay. In that case, please come back to me when you have","color":"gray"},{"text":" level 3 clearance","color":"red"},{"text":", as my advice can only help you at that time.","color":"gray"}]
execute if score @p Timer matches 740 run function main:dialogues/abdul/abdul_fx

# If P doesn't have level 3 clearance
execute if score @p Timer matches 860 unless entity @p[tag=KC_3] run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Alright, Abdul! I'll see you soon!","color":"gray"}]
execute if score @p Timer matches 860 unless entity @p[tag=KC_3] run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

# End of dialogue (only if P doesn't have level 3 clearance)
execute if score @p Timer matches 920 unless entity @p[tag=KC_3] run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

# Turn on repeating cmd block to check for level 3 clearance
execute if score @p Timer matches 920 run data merge block -1950 81 919 {auto:1}

########################################
# Increment
function main:timer/increment

# Turn off repeating command block (only if P doesn't have level 3 clearance)
execute if score @p Timer matches 921 unless entity @p[tag=KC_3] run data merge block -1950 81 917 {auto:0}

# Change command for next dialogue
execute if score @p Timer matches 921 if entity @p[tag=KC_3] run data merge block -1950 81 917 {Command:"function main:dialogues/abdul/abdul_level_3"}
execute if score @p Timer matches 921 unless entity @p[tag=KC_3] run data merge block -1950 81 917 {Command:"function main:dialogues/abdul/abdul_reminder_1"}

# Turn on repeating command block for setting comparator (only if P doesn't have level 3 clearance)
execute if score @p Timer matches 921 unless entity @p[tag=KC_3] run data merge block -1950 81 922 {auto:1}

# Delete barrier wall (only if P doesn't have level 3 clearance)
execute if score @p Timer matches 921 unless entity @p[tag=KC_3] run function main:dialogues/abdul/abdul_wall_destroy

# Reset Timer
execute if score @p Timer matches 921 run function main:timer/reset
