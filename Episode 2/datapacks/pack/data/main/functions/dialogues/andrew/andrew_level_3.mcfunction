# Made by EOSand
# Andrew dialogue when P has level 3 clearance

# Remove comparator
execute if score @p Timer matches 0 run setblock -1953 79 917 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"ANDREW ›››","color":"green","bold":true},{"text":" Welcome back! I see you now have","color":"gray"},{"text":" level 3 clearance","color":"red"},{"text":"! So how may I help?","color":"gray"}]
execute if score @p Timer matches 0 run function main:dialogues/andrew/andrew_fx

execute if score @p Timer matches 80 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" I now have access to the electrical generators at","color":"gray"},{"text":" BluSci","color":"aqua"},{"text":" However, each generator requires a passcode to enable. Do you know anything about this?","color":"gray"}]
execute if score @p Timer matches 80 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 260 run tellraw @p ["",{"text":"ANDREW ›››","color":"green","bold":true},{"text":" In fact I do! I could tell you the passcode, or I could make it a little bit more interesting.","color":"gray"}]
execute if score @p Timer matches 260 run function main:dialogues/andrew/andrew_fx

execute if score @p Timer matches 360 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" How do you mean?","color":"gray"}]
execute if score @p Timer matches 360 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 400 run tellraw @p ["",{"text":"ANDREW ›››","color":"green","bold":true},{"text":" I have heard rumors about something fishy going on at","color":"gray"},{"text":" EXIST headquarters","color":"yellow"},{"text":". I am quite a conspiracy theorist myself, so after first hearing about these mystical artifacts called","color":"gray"},{"text":" Drops of Limbo","color":"dark_red"},{"text":", I have been very intrigued. With this, I'll cut you a deal. If you bring me","color":"gray"},{"text":" 4 Drops of Limbo","color":"dark_red"},{"text":" I will exchange one of the passcodes. Sound good?","color":"gray"}]
execute if score @p Timer matches 400 run function main:dialogues/andrew/andrew_fx

execute if score @p Timer matches 680 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Ummm, I'm not sure where to find them, let alone get them.","color":"gray"}]
execute if score @p Timer matches 680 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 740 run tellraw @p ["",{"text":"ANDREW ›››","color":"green","bold":true},{"text":" Well, I guess you're on a quest then! Go on now, be on your way!","color":"gray"}]
execute if score @p Timer matches 740 run function main:dialogues/andrew/andrew_fx

execute if score @p Timer matches 820 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

# Turn on repeating cmd block to check for quest items
execute if score @p Timer matches 820 run data merge block -1950 79 920 {auto:1}

########################################
# Increment
function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 821 run data merge block -1950 79 917 {auto:0}

# Change command for next dialogue
execute if score @p Timer matches 821 run data merge block -1950 79 917 {Command:"function main:dialogues/andrew/andrew_reminder_2"}

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 821 run data merge block -1950 79 922 {auto:1}

# Delete barrier wall
execute if score @p Timer matches 821 run function main:dialogues/andrew/andrew_wall_destroy

# Reset Timer
execute if score @p Timer matches 821 run function main:timer/reset
