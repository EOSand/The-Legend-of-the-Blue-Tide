# Made by EOSand
# Vik dialogue when quest completed

# Remove comparator
execute if score @p Timer matches 0 run setblock -1953 83 917 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"VIK ›››","color":"green","bold":true},{"text":" Welcome back! I see you have the","color":"gray"},{"text":" gems","color":"aqua"},{"text":"!","color":"gray"}]
execute if score @p Timer matches 0 run function main:dialogues/vik/vik_fx

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Yep! They were quite the hassle to get a hold of, but I have them nonetheless!","color":"gray"}]
execute if score @p Timer matches 60 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 120 run tellraw @p ["",{"text":"VIK ›››","color":"green","bold":true},{"text":" I'm so excited for these! Thank you!","color":"gray"}]
execute if score @p Timer matches 120 run function main:dialogues/vik/vik_fx

# Clear 1 Redstone, Lapis, Diamond, Emerald, Quartz, Amethyst; play item pickup sound
execute if score @p Timer matches 180 run clear @p minecraft:redstone 1
execute if score @p Timer matches 180 run clear @p minecraft:lapis_lazuli 1
execute if score @p Timer matches 180 run clear @p minecraft:diamond 1
execute if score @p Timer matches 180 run clear @p minecraft:emerald 1
execute if score @p Timer matches 180 run clear @p minecraft:quartz 1
execute if score @p Timer matches 180 run clear @p minecraft:amethyst_shard 1
execute if score @p Timer matches 180 run playsound minecraft:entity.item.pickup player @p ~ ~ ~ 1

execute if score @p Timer matches 190 run tellraw @p ["",{"text":"VIK ›››","color":"green","bold":true},{"text":" And, now, as promised, your clue:","color":"gray"}]
execute if score @p Timer matches 190 run function main:dialogues/vik/vik_fx

execute if score @p Timer matches 230 run tellraw @p ["",{"text":"PASSCODE HINT ›››","color":"yellow","bold":true},{"text":" The first code you seek is the name of a traveler, like you, but he lived many moons ago, it's true. He went to a land in search of an ancient shrine, where he built a town to make it shine. It shone in the moonlight, which is where he got his name, and legend has it his gem is kept in his grave.","color":"gold","italic":true}]
execute if score @p Timer matches 230 run function main:dialogues/vik/vik_fx

execute if score @p Timer matches 550 run tellraw @p ["",{"text":"VIK ›››","color":"green","bold":true},{"text":" Here's a copy to keep, too.","color":"gray"}]
execute if score @p Timer matches 550 run function main:dialogues/vik/vik_fx

# Give P hint
execute if score @p Timer matches 570 run give @p written_book{pages:['{"text":"The first code you seek is the name of a traveler, like you, but he lived many moons ago, it\'s true. He went to a land in search of an ancient shrine, where he built a town to make it shine. It shone in the moonlight, which is where he got his name, and legend has it his gem is kept in his grave.","italic":true,"color":"dark_gray"}'],title:"First Passcode Hint",author:Vik}
execute if score @p Timer matches 570 run playsound minecraft:entity.item.pickup player @p ~ ~ ~ 1

execute if score @p Timer matches 580 run tellraw @p  ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Thanks so much Vik! Hopefully this helps!","color":"gray"}]
execute if score @p Timer matches 580 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 640 run tellraw @p ["",{"text":"VIK ›››","color":"green","bold":true},{"text":" I bet it will. Good luck now, ","color":"gray","extra":[{"selector":"@p"},{"text":"!"}]}]
execute if score @p Timer matches 640 run function main:dialogues/vik/vik_fx

execute if score @p Timer matches 680 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

########################################
# Increment
function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 681 run data merge block -1950 83 917 {auto:0}

# Delete barrier wall
execute if score @p Timer matches 681 run function main:dialogues/vik/vik_wall_destroy

# Reset Timer
execute if score @p Timer matches 681 run function main:timer/reset
