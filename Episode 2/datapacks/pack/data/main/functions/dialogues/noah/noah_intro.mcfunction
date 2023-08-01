# Made by EOSand
# First Noah dialogue (Dark Oak House)

# Remove comparator
execute if score @p Timer matches 0 run setblock -1905 56 794 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"NOAH ›››","color":"green","bold":true},{"text":" Greetings ","color":"gray","extra":[{"selector":"@p"}]},{"text":", welcome to the residential part of Monscollis!","color":"gray"}]
execute if score @p Timer matches 0 run function main:dialogues/noah/noah_fx

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Hey Noah! Wow, I have to say I am really impressed with the architecture of these houses. I assume this one is yours?","color":"gray"}]
execute if score @p Timer matches 60 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 140 run tellraw @p ["",{"text":"NOAH ›››","color":"green","bold":true},{"text":" Yeah, the dark oak beauty is mine. I always knew I would live in a sleek, modern house, and this one seemed to fit the bill exactly! The way the dark oak texture compliments the contrast between the quartz and black concrete is just perfect!","color":"gray"}]
execute if score @p Timer matches 140 run function main:dialogues/noah/noah_fx

execute if score @p Timer matches 380 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Yeah, I'd have to say I'm a bit jealous. Well, if there's anything around your house that you need help with, I'm more than happy to assist.","color":"gray"}]
execute if score @p Timer matches 380 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 520 run tellraw @p ["",{"text":"NOAH ›››","color":"green","bold":true},{"text":" Thank you so much! Actually, mine and my neighbors' yards have been quite wild the past few days, as you can see by the immense takeover of","color":"gray"},{"text":" weeds and grass","color":"aqua"},{"text":".","color":"gray"}]
execute if score @p Timer matches 520 run function main:dialogues/noah/noah_fx

execute if score @p Timer matches 660 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Now that you say that I do notice they're a bit hectic.","color":"gray"}]
execute if score @p Timer matches 660 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 720 run tellraw @p ["",{"text":"NOAH ›››","color":"green","bold":true},{"text":" Yeah, grass has never been this crazy for all I can remember here in Monscollis, so maybe you could lend a hand?","color":"gray"}]
execute if score @p Timer matches 720 run function main:dialogues/noah/noah_fx

execute if score @p Timer matches 840 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Yeah of course! Anything I can do to help I'm all for!","color":"gray"}]
execute if score @p Timer matches 840 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 900 run tellraw @p ["",{"text":"NOAH ›››","color":"green","bold":true},{"text":" Awesome! I have a chest inside that has some things that may be of use, so feel free to take whatever you want!","color":"gray"}]
execute if score @p Timer matches 900 run function main:dialogues/noah/noah_fx

execute if score @p Timer matches 1000 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Perfect! Is there anything else you needed help with?","color":"gray"}]
execute if score @p Timer matches 1000 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 1040 run tellraw @p ["",{"text":"NOAH ›››","color":"green","bold":true},{"text":" Actually, my jacuzzi inside has been acting up lately, so I have to","color":"gray"},{"text":" replace the bubble jets","color":"aqua"},{"text":" but haven't had the chance to. Would you be able to replace them? There should be some money inside.","color":"gray"}]
execute if score @p Timer matches 1040 run function main:dialogues/noah/noah_fx

execute if score @p Timer matches 1220 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Yeah, of course! I'll get right to it!","color":"gray"}]
execute if score @p Timer matches 1220 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 1260 run tellraw @p ["",{"text":"NOAH ›››","color":"green","bold":true},{"text":" Thanks so much!","color":"gray"}]
execute if score @p Timer matches 1260 run function main:dialogues/noah/noah_fx

# End of dialogue
execute if score @p Timer matches 1300 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

# Turn on repeating cmd block to check if quest done
execute if score @p Timer matches 1300 run data merge block -1902 56 796 {auto:1}

########################################
# Increment
execute run function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 1301 run data merge block -1902 56 794 {auto:0}

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 1301 run data merge block -1902 56 797 {auto:1}

# Change command
execute if score @p Timer matches 1301 run data modify block -1902 56 794 Command set value "function main:dialogues/noah/noah_reminder"

# Delete barrier wall
execute if score @p Timer matches 1301 run function main:dialogues/noah/noah_wall_destroy

# Reset Timer
execute if score @p Timer matches 1301 run function main:timer/reset
