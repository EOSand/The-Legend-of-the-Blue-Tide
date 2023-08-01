# Made by EOSand
# Luc dialogue (Acacia House)

# Remove comparator
execute if score @p Timer matches 0 run setblock -1905 58 794 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Alright, Luc, I think I finally have everything completed!","color":"gray"}]
execute if score @p Timer matches 0 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"LUC ›››","color":"green","bold":true},{"text":" Hey! Everything looks perfect! Thank you so much for your help and here's a payment for your time!","color":"gray"}]
execute if score @p Timer matches 60 run function main:dialogues/luc/luc_fx

# Give P the Shattered Disc; play sound
execute if score @p Timer matches 160 run give @p minecraft:music_disc_11{display:{Name:'{"text":"Shattered Disc","color":"yellow","italic":false}'}}
execute if score @p Timer matches 160 run playsound minecraft:entity.item.pickup player @p ~ ~ ~ 1

execute if score @p Timer matches 180 run tellraw @p ["",{"text":"LUC ›››","color":"green","bold":true},{"text":" I used to be a huge collector of vinyl tracks, and I found this one quite a long time ago and, well, it's broken so I can't play it. Maybe you'll find a use for it?","color":"gray"}]
execute if score @p Timer matches 180 run function main:dialogues/luc/luc_fx

execute if score @p Timer matches 340 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Oh, well, thanks I guess! I'll take it off your hands and hopefully will find a use for it. Thanks so much, Luc!","color":"gray"}]
execute if score @p Timer matches 340 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 440 run tellraw @p ["",{"text":"LUC ›››","color":"green","bold":true},{"text":" And the same to you!","color":"gray"}]
execute if score @p Timer matches 440 run function main:dialogues/luc/luc_fx

# End of dialogue
execute if score @p Timer matches 460 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

########################################
# Increment
execute run function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 461 run data merge block -1902 58 794 {auto:0}

# Delete barrier wall
execute if score @p Timer matches 461 run function main:dialogues/luc/luc_wall_destroy

# Reset Timer
execute if score @p Timer matches 461 run function main:timer/reset
