# Made by ESand
# CS dialogue

# Remove comparator
execute if score @p Timer matches 0 run setblock -1913 60 794 minecraft:bricks

# Dialogue
execute if score @p Timer matches 0 run tellraw @p ["",{"text":"[A. Turing]","color":"dark_aqua"},{"text":" Hello, welcome to computer science!","color":"green"}]
execute if score @p Timer matches 0 run execute at @e[name="A. Turing"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 0 run execute at @e[name="A. Turing"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 0 run execute at @e[name="A. Turing"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"[A. Turing]","color":"dark_aqua"},{"text":" We mainly focus on the programming language called Java.","color":"green"}]
execute if score @p Timer matches 60 run execute at @e[name="A. Turing"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 60 run execute at @e[name="A. Turing"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 60 run execute at @e[name="A. Turing"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 120 run tellraw @p ["",{"text":"[A. Turing]","color":"dark_aqua"},{"text":" In fact, one of my students is working on a sandbox video game which he calls \"Minceraft\". Pretty cool, huh?","color":"green"}]
execute if score @p Timer matches 120 run execute at @e[name="A. Turing"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 120 run execute at @e[name="A. Turing"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 120 run execute at @e[name="A. Turing"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 200 run execute as @p run say Woah, that's really interesting actually.
execute if score @p Timer matches 200 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 250 run tellraw @p ["",{"text":"[A. Turing]","color":"dark_aqua"},{"text":" Anyway, since CS is such an intricate subject, I don't really have any sample problems I can give you. But please feel free to go to the other classrooms; I bet a few have some questions for you.","color":"green"}]
execute if score @p Timer matches 250 run execute at @e[name="A. Turing"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 250 run execute at @e[name="A. Turing"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 250 run execute at @e[name="A. Turing"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 430 run execute as @p run say OK! Thank you so much Prof. Turing!
execute if score @p Timer matches 430 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~


########################################

function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 431 run data merge block -1911 60 794 {auto:0}

# Replace comparator
execute if score @p Timer matches 431 run setblock -1913 60 794 minecraft:comparator[facing=west]

# Reset Timer
execute if score @p Timer matches 431 run function main:timer/reset
