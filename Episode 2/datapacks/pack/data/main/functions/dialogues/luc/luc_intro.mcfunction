# Made by EOSand
# First Luc dialogue (Acacia House)

# Remove comparator
execute if score @p Timer matches 0 run setblock -1905 58 794 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"LUC ›››","color":"green","bold":true},{"text":" Hello there! How's it going on this fine summer day?","color":"gray"}]
execute if score @p Timer matches 0 run function main:dialogues/luc/luc_fx

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Hi Luc, I'm doing well and I just arrived to Monscollis!","color":"gray"}]
execute if score @p Timer matches 60 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 120 run tellraw @p ["",{"text":"LUC ›››","color":"green","bold":true},{"text":" How excellent! How do you like the city so far?","color":"gray"}]
execute if score @p Timer matches 120 run function main:dialogues/luc/luc_fx

execute if score @p Timer matches 180 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" It's quite a site to see, that's for sure. I have never been to a city of this scale before, so this experience is wonderful so far!","color":"gray"}]
execute if score @p Timer matches 180 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 320 run tellraw @p ["",{"text":"LUC ›››","color":"green","bold":true},{"text":" I'm very pleased to hear that, ","color":"gray","extra":[{"selector":"@p"}]},{"text":"! This is the residential/downtown part of the city with the library and museum right nearby. If you haven't checked them out yet, you definitely should!","color":"gray"}]
execute if score @p Timer matches 320 run function main:dialogues/luc/luc_fx

execute if score @p Timer matches 500 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Oh absolutely, I will. But before I leave you hanging, I feel like it's my right to help out with whatever I can. Is there anything I can do to help you out?","color":"gray"}]
execute if score @p Timer matches 500 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 640 run tellraw @p ["",{"text":"LUC ›››","color":"green","bold":true},{"text":" Well, I don't know if you've seen my neighbors","color":"gray"},{"text":" Noah and Ben","color":"aqua"},{"text":", but we've had some issues with","color":"gray"},{"text":" overgrowth in our yards","color":"aqua"},{"text":". Also, my pool has had some issues with its","color":"gray"},{"text":" jets","color":"aqua"},{"text":" like Noah's, so maybe you could assist with those tasks?","color":"gray"}]
execute if score @p Timer matches 640 run function main:dialogues/luc/luc_fx

execute if score @p Timer matches 860 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Yeah, of course! Do you have some supplies anywhere? I hate to say that I'm empty-handed but here I am.","color":"gray"}]
execute if score @p Timer matches 860 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 960 run tellraw @p ["",{"text":"LUC ›››","color":"green","bold":true},{"text":" Yeah, I should have some supplies inside.","color":"gray"}]
execute if score @p Timer matches 960 run function main:dialogues/luc/luc_fx

execute if score @p Timer matches 1020 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Awesome! I'll get to work on that and get back to you to check in!","color":"gray"}]
execute if score @p Timer matches 1020 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 1080 run tellraw @p ["",{"text":"LUC ›››","color":"green","bold":true},{"text":" Thank you so much, ","color":"gray","extra":[{"selector":"@p"},{"text":"! I really appreciate it!"}]}]
execute if score @p Timer matches 1080 run function main:dialogues/luc/luc_fx

# End of dialogue
execute if score @p Timer matches 1140 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

# Turn on repeating cmd block to check if quest done
execute if score @p Timer matches 1140 run data merge block -1902 58 796 {auto:1}

########################################
# Increment
execute run function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 1141 run data merge block -1902 58 794 {auto:0}

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 1141 run data merge block -1902 58 797 {auto:1}

# Change command
execute if score @p Timer matches 1141 run data modify block -1902 58 794 Command set value "function main:dialogues/luc/luc_reminder"

# Delete barrier wall
execute if score @p Timer matches 1141 run function main:dialogues/luc/luc_wall_destroy

# Reset Timer
execute if score @p Timer matches 1141 run function main:timer/reset
