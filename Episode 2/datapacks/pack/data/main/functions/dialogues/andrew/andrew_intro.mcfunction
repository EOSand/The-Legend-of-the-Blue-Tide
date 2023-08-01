# Made by EOSand
# First Andrew Dialogue

# Remove comparator
execute if score @p Timer matches 0 run setblock -1953 79 917 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"ANDREW ›››","color":"green","bold":true},{"text":" Greetings, newcomer! How may I be of assistance?","color":"gray"}]
execute if score @p Timer matches 0 run function main:dialogues/andrew/andrew_fx

execute if score @p Timer matches 60 run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Hi Andrew! I'm just exploring the city right now, do you have any guidance for me?","color":"gray"}]
execute if score @p Timer matches 60 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 140 run tellraw @p ["",{"text":"ANDREW ›››","color":"green","bold":true},{"text":" Well this is the","color":"gray"},{"text":" Quartz Commons","color":"aqua"},{"text":". It's one of my favorite places to come to and just relax, you know? The quartz is just so tranquil, isn't it?","color":"gray"}]
execute if score @p Timer matches 140 run function main:dialogues/andrew/andrew_fx

execute if score @p Timer matches 300 run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Yeah, it really is beautiful. What other points of interest are there that I should know about?","color":"gray"}]
execute if score @p Timer matches 300 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 400 run tellraw @p ["",{"text":"ANDREW ›››","color":"green","bold":true},{"text":" Well, there are three main commons. This one, the","color":"gray"},{"text":" Main Street Commons","color":"aqua"},{"text":", and the","color":"gray"},{"text":" Residential Commons","color":"aqua"},{"text":".","color":"gray"}]
execute if score @p Timer matches 400 run function main:dialogues/andrew/andrew_fx

execute if score @p Timer matches 500 run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Awesome! I'll definitely go check them out. Also, do you know anything about security clearance key cards and upgrading them?","color":"gray"}]
execute if score @p Timer matches 500 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 600 run tellraw @p ["",{"text":"ANDREW ›››","color":"green","bold":true},{"text":" Ah, yes I do. In fact, I won't be of much help until you have","color":"gray"},{"text":" level 3 clearance","color":"red"},{"text":" . Please come back when you do!","color":"gray"}]
execute if score @p Timer matches 600 run function main:dialogues/andrew/andrew_fx

# If P doesn't have level 3 clearance
execute if score @p Timer matches 700 unless entity @p[tag=KC_3] run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Alright, I'll see you soon!","color":"gray"}]
execute if score @p Timer matches 700 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

# End of dialogue (only if P doesn't have level 3 clearance)
execute if score @p Timer matches 740 unless entity @p[tag=KC_3] run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

# Turn on repeating cmd block to check for level 3 clearance
execute if score @p Timer matches 740 run data merge block -1950 79 919 {auto:1}

########################################
# Increment
function main:timer/increment

# Turn off repeating command block (only if P doesn't have level 3 clearance)
execute if score @p Timer matches 741 unless entity @p[tag=KC_3] run data merge block -1950 79 917 {auto:0}

# Change command for next dialogue
execute if score @p Timer matches 741 if entity @p[tag=KC_3] run data merge block -1950 79 917 {Command:"function main:dialogues/andrew/andrew_level_3"}
execute if score @p Timer matches 741 unless entity @p[tag=KC_3] run data merge block -1950 79 917 {Command:"function main:dialogues/andrew/andrew_reminder_1"}

# Turn on repeating command block for setting comparator (only if P doesn't have level 3 clearance)
execute if score @p Timer matches 741 unless entity @p[tag=KC_3] run data merge block -1950 79 922 {auto:1}

# Delete barrier wall (only if P doesn't have level 3 clearance)
execute if score @p Timer matches 741 unless entity @p[tag=KC_3] run function main:dialogues/andrew/andrew_wall_destroy

# Reset Timer
execute if score @p Timer matches 741 run function main:timer/reset
