# Made by EOSand
# Noah dialogue (Dark Oak House)

# Remove comparator
execute if score @p Timer matches 0 run setblock -1905 56 794 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Alright, Noah, I think everything is complete!","color":"gray"}]
execute if score @p Timer matches 0 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"NOAH ›››","color":"green","bold":true},{"text":" Awesome, everything looks perfect! Thank you so much for helping me out, ","color":"gray","extra":[{"selector":"@p"}]},{"text":"! Here's a token of my appreciation!","color":"gray"}]
execute if score @p Timer matches 60 run function main:dialogues/noah/noah_fx

# Give P the Queen Lily of the Valley; play sound
execute if score @p Timer matches 180 run give @p minecraft:lily_of_the_valley{display:{Name:'{"text":"Queen Lily of the Valley","color":"yellow","italic":false}'}}
execute if score @p Timer matches 180 run playsound minecraft:entity.item.pickup player @p ~ ~ ~ 1

execute if score @p Timer matches 200 run tellraw @p ["",{"text":"NOAH ›››","color":"green","bold":true},{"text":" This is one of my prized posessions, it's the only one in existence! Please take good care of it for me!","color":"gray"}]
execute if score @p Timer matches 200 run function main:dialogues/noah/noah_fx

execute if score @p Timer matches 300 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Of course, I most certainly will. Thank you so much, Noah!","color":"gray"}]
execute if score @p Timer matches 300 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 360 run tellraw @p ["",{"text":"NOAH ›››","color":"green","bold":true},{"text":" And the same to you!","color":"gray"}]
execute if score @p Timer matches 360 run function main:dialogues/noah/noah_fx

# End of dialogue
execute if score @p Timer matches 400 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

########################################
# Increment
execute run function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 401 run data merge block -1902 56 794 {auto:0}

# Delete barrier wall
execute if score @p Timer matches 401 run function main:dialogues/noah/noah_wall_destroy

# Reset Timer
execute if score @p Timer matches 401 run function main:timer/reset
