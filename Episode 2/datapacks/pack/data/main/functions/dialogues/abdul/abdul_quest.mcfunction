# Made by EOSand
# Abdul dialogue when quest completed

# Remove comparator
execute if score @p Timer matches 0 run setblock -1953 81 917 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"ABDUL ›››","color":"green","bold":true},{"text":" Hey there! I see you found the","color":"gray"},{"text":" Mending Book","color":"yellow"},{"text":" and","color":"gray"},{"text":" Lapis Lazuli","color":"blue"},{"text":"!","color":"gray"}]
execute if score @p Timer matches 0 run function main:dialogues/abdul/abdul_fx

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Yeah, of course! They were in chests deep within the mineshaft, so hopefully the trek was worth it!","color":"gray"}]
execute if score @p Timer matches 60 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 140 run tellraw @p ["",{"text":"ABDUL ›››","color":"green","bold":true},{"text":" Thank you so much! Let me take them off your hands.","color":"gray"}]
execute if score @p Timer matches 140 run function main:dialogues/abdul/abdul_fx

# Clear 1 Mending Book, 16 Lapis; play item pickup sound
execute if score @p Timer matches 200 run clear @p minecraft:enchanted_book{StoredEnchantments:[{id:"minecraft:mending",lvl:1s}]} 1
execute if score @p Timer matches 200 run clear @p minecraft:lapis_lazuli 16
execute if score @p Timer matches 200 run playsound minecraft:entity.item.pickup player @p ~ ~ ~ 1


execute if score @p Timer matches 210 run tellraw @p ["",{"text":"ABDUL ›››","color":"green","bold":true},{"text":" And now for your hint:","color":"gray"}]
execute if score @p Timer matches 210 run function main:dialogues/abdul/abdul_fx

execute if score @p Timer matches 230 run tellraw @p ["",{"text":"PASSCODE HINT ›››","color":"yellow","bold":true},{"text":" The third code is the name of a new city you've encountered, with a new task at hand that won't be blundered. Compared to the last, the technology is far more evolved, with hyperspeed rails and puzzles that will be solved.","color":"gold","italic":true}]
execute if score @p Timer matches 230 run function main:dialogues/abdul/abdul_fx

execute if score @p Timer matches 470 run tellraw @p ["",{"text":"ABDUL ›››","color":"green","bold":true},{"text":" And here's a copy of it, as well.","color":"gray"}]
execute if score @p Timer matches 470 run function main:dialogues/abdul/abdul_fx

# Give P hint
execute if score @p Timer matches 490 run give @p written_book{pages:['{"text":"The third code is the name of a new city you\'ve encountered, with a new task at hand that won\'t be blundered. Compared to the last, the technology is far more evolved, with hyperspeed rails and puzzles that will be solved.","italic":true,"color":"gray"}'],title:"Third Passcode Hint",author:Abdul}
execute if score @p Timer matches 490 run playsound minecraft:entity.item.pickup player @p ~ ~ ~ 1

execute if score @p Timer matches 500 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Thanks so much, Abdul!","color":"gray"}]
execute if score @p Timer matches 500 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 520 run tellraw @p ["",{"text":"ABDUL ›››","color":"green","bold":true},{"text":" My pleasure! Now let me take to my new artifacts!","color":"gray"}]
execute if score @p Timer matches 520 run function main:dialogues/abdul/abdul_fx

execute if score @p Timer matches 580 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

########################################
# Increment
function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 581 run data merge block -1950 81 917 {auto:0}

# Delete barrier wall
execute if score @p Timer matches 581 run function main:dialogues/abdul/abdul_wall_destroy

# Reset Timer
execute if score @p Timer matches 581 run function main:timer/reset
