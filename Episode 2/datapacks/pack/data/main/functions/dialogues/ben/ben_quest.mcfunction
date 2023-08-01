# Made by EOSand
# Ben dialogue (Spruce House)

# Remove comparator
execute if score @p Timer matches 0 run setblock -1905 60 794 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Hey, Ben! I think everything should now be in order.","color":"gray"}]
execute if score @p Timer matches 0 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"BEN ›››","color":"green","bold":true},{"text":" I believe so, too! Thank you so much for successfully replenishing my garden and trimming away all the overgrowth! Please, take this shell!","color":"gray"}]
execute if score @p Timer matches 520 run function main:dialogues/ben/ben_fx

# Give P the Ammonite Shell; play sound
execute if score @p Timer matches 200 run give @p minecraft:nautilus_shell{display:{Name:'{"text":"Ammonite Shell","color":"yellow","italic":false}'}}
execute if score @p Timer matches 200 run playsound minecraft:entity.item.pickup player @p ~ ~ ~ 1

execute if score @p Timer matches 220 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Oh, thank you so much!","color":"gray"}]
execute if score @p Timer matches 220 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 240 run tellraw @p ["",{"text":"BEN ›››","color":"green","bold":true},{"text":" Of course! It's just been hoarding up space in my storage, but it looks cool, doesn't it?","color":"gray"}]
execute if score @p Timer matches 240 run function main:dialogues/ben/ben_fx

execute if score @p Timer matches 380 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Um... thanks Ben, very cool!","color":"gray"}]
execute if score @p Timer matches 380 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 400 run tellraw @p ["",{"text":"BEN ›››","color":"green","bold":true},{"text":" Awesome, ","color":"gray","extra":[{"selector":"@p"},{"text":". Thank you so much for your help! I'll see you around!"}]}]
execute if score @p Timer matches 400 run function main:dialogues/ben/ben_fx

# End of dialogue
execute if score @p Timer matches 460 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

########################################
# Increment
execute run function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 461 run data merge block -1902 60 794 {auto:0}

# Delete barrier wall
execute if score @p Timer matches 461 run function main:dialogues/ben/ben_wall_destroy

# Reset Timer
execute if score @p Timer matches 461 run function main:timer/reset
