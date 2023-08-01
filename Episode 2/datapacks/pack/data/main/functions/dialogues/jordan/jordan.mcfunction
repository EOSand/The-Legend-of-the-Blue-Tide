# Made by EOSand
# Jordan dialogue (Library)

# Remove comparator
execute if score @p Timer matches 0 run setblock -1758 58 806 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"JORDAN ›››","color":"green","bold":true},{"text":" Man, this library sure is something, huh? There are so many books and documents everywhere.","color":"gray"}]
execute if score @p Timer matches 0 run function main:dialogues/jordan/jordan_fx

execute if score @p Timer matches 80 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Yeah, it's really impressive. It's crazy to think of all the mysteries and wonders that lie within here, isn't it?","color":"gray"}]
execute if score @p Timer matches 80 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 180 run tellraw @p ["",{"text":"JORDAN ›››","color":"green","bold":true},{"text":" Yeah, seriously! You want in on a little secret?","color":"gray"}]
execute if score @p Timer matches 180 run function main:dialogues/jordan/jordan_fx

execute if score @p Timer matches 240 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Sure! What's the secret?","color":"gray"}]
execute if score @p Timer matches 240 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 280 run tellraw @p ["",{"text":"JORDAN ›››","color":"green","bold":true},{"text":" If you look where I'm looking, you can see a","color":"gray"},{"text":" glimmering book hanging by the ceiling","color":"aqua"},{"text":". Legend has is that that tome holds Monsollis's deepest, darkest secrets and that the only way to get to it is through some transformation of the library itself!","color":"gray"}]
execute if score @p Timer matches 280 run function main:dialogues/jordan/jordan_fx

execute if score @p Timer matches 480 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Really, what kind of transformation?","color":"gray"}]
execute if score @p Timer matches 480 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 520 run tellraw @p ["",{"text":"JORDAN ›››","color":"green","bold":true},{"text":" I have no clue. Some say it can be accessed through the","color":"gray"},{"text":" archives room of the library","color":"aqua"},{"text":", but only","color":"gray"},{"text":" library officials","color":"aqua"},{"text":" can get in there.","color":"gray"}]
execute if score @p Timer matches 520 run function main:dialogues/jordan/jordan_fx

execute if score @p Timer matches 640 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Woah, what an interesting legend!","color":"gray"}]
execute if score @p Timer matches 640 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

# End of dialogue
execute if score @p Timer matches 680 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

########################################
# Increment
function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 681 run data merge block -1755 58 806 {auto:0}

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 681 run data merge block -1759 60 806 {auto:1}

# Delete barrier wall
execute if score @p Timer matches 681 run function main:dialogues/jordan/jordan_wall_destroy

# Reset Timer
execute if score @p Timer matches 681 run function main:timer/reset
