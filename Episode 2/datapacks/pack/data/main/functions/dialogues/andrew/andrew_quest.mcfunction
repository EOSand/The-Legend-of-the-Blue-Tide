# Made by EOSand
# Andrew dialogue when quest completed

# Remove comparator
execute if score @p Timer matches 0 run setblock -1953 79 917 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"ANDREW ›››","color":"green","bold":true},{"text":" I see you have the","color":"gray"},{"text":" Drops of Limbo","color":"dark_red"},{"text":". Are we still on for the trade?","color":"gray"}]
execute if score @p Timer matches 0 run function main:dialogues/andrew/andrew_fx

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Yes please! I am in dire need of the passcode!","color":"gray"}]
execute if score @p Timer matches 60 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 120 run tellraw @p ["",{"text":"ANDREW ›››","color":"green","bold":true},{"text":" Alright then. Let me take those items off your hand.","color":"gray"}]
execute if score @p Timer matches 120 run function main:dialogues/andrew/andrew_fx

# Clear 4 Drop of Limbo; play item pickup sound
execute if score @p Timer matches 180 run clear @p minecraft:spider_eye{display:{Name:'{"text":"Drop of Limbo","color":"dark_red","italic":false}'}} 4
execute if score @p Timer matches 180 run playsound minecraft:entity.item.pickup player @p ~ ~ ~ 1

execute if score @p Timer matches 190 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" And now the passcode?","color":"gray"}]
execute if score @p Timer matches 190 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 210 run tellraw @p ["",{"text":"ANDREW ›››","color":"green","bold":true},{"text":" Oh yeah, of course! Sorry, these drops are so intriguing! Anyway, here's your hint:","color":"gray"}]
execute if score @p Timer matches 210 run function main:dialogues/andrew/andrew_fx

execute if score @p Timer matches 310 run tellraw @p ["",{"text":"PASSCODE HINT ›››","color":"yellow","bold":true},{"text":" The second passcode you seek is the name of a town you gave a peak. When you didn't know where you would set sail, you arrived at this settlement and continued to prevail. Some say the name is analogous to a swamp, but your memory should fare well, at least enough for this prompt.","color":"gold","italic":true}]
execute if score @p Timer matches 310 run function main:dialogues/andrew/andrew_fx

execute if score @p Timer matches 610 run tellraw @p ["",{"text":"ANDREW ›››","color":"green","bold":true},{"text":" Here's a copy of the hint too, just in case you forget it.","color":"gray"}]
execute if score @p Timer matches 610 run function main:dialogues/andrew/andrew_fx

# Give P hint
execute if score @p Timer matches 670 run give @p written_book{pages:['{"text":"The second passcode you seek is the name of a town you gave a peak. When you didn\'t know where you would set sail, you arrived at this settlement and continued to prevail. Some say the name is analogous to a swamp, but your memory should fare well, at least enough for this prompt.","italic":true,"color":"dark_gray"}'],title:"Second Passcode Hint",author:Andrew}
execute if score @p Timer matches 670 run playsound minecraft:entity.item.pickup player @p ~ ~ ~ 1

execute if score @p Timer matches 680 run tellraw @p  ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Thank you very much, Andrew!","color":"gray"}]
execute if score @p Timer matches 680 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 720 run tellraw @p ["",{"text":"ANDREW ›››","color":"green","bold":true},{"text":" My pleasure, good luck ","color":"gray","extra":[{"selector":"@p"},{"text":"!"}]}]
execute if score @p Timer matches 720 run function main:dialogues/andrew/andrew_fx

execute if score @p Timer matches 780 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

########################################
# Increment
function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 781 run data merge block -1950 79 917 {auto:0}

# Delete barrier wall
execute if score @p Timer matches 781 run function main:dialogues/andrew/andrew_wall_destroy

# Reset Timer
execute if score @p Timer matches 781 run function main:timer/reset
