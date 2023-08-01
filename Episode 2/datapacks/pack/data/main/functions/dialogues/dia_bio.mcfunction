# Made by ESand
# BIO dialogue

# Remove comparator
execute if score @p Timer matches 0 run setblock -1913 56 794 minecraft:bricks

# Dialogue
execute if score @p Timer matches 0 run tellraw @p ["",{"text":"[C. Darwin]","color":"dark_aqua"},{"text":" Salutations! Welcome to the biology classrom!","color":"green"}]
execute if score @p Timer matches 0 run execute at @e[name="C. Darwin"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 0 run execute at @e[name="C. Darwin"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 0 run execute at @e[name="C. Darwin"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"[C. Darwin]","color":"dark_aqua"},{"text":" We mainly focus on topics like macromolecules, homeostasis, botany, and cell biology. Have you had any experience with the subject before?","color":"green"}]
execute if score @p Timer matches 60 run execute at @e[name="C. Darwin"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 60 run execute at @e[name="C. Darwin"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 60 run execute at @e[name="C. Darwin"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 240 run execute as @p run say I remember a bit of the topics from years ago but I was much more interested in the math/physics side of STEM.
execute if score @p Timer matches 240 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 360 run tellraw @p ["",{"text":"[C. Darwin]","color":"dark_aqua"},{"text":" No worries, mathematics and physics are very interesting and fundamental subjects of the universe. So if that's more your speed then that's alright.","color":"green"}]
execute if score @p Timer matches 360 run execute at @e[name="C. Darwin"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 360 run execute at @e[name="C. Darwin"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 360 run execute at @e[name="C. Darwin"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 500 run execute as @p run say Yeah, I was much more fascinated with the fundamental side of the sciences.
execute if score @p Timer matches 500 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 580 run tellraw @p ["",{"text":"[C. Darwin]","color":"dark_aqua"},{"text":" Of course. If you haven't already, you should meet professors Newton, Hawking, and Tesla, who teach the maths, physics, and engineering classes.","color":"green"}]
execute if score @p Timer matches 580 run execute at @e[name="C. Darwin"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 580 run execute at @e[name="C. Darwin"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 580 run execute at @e[name="C. Darwin"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 720 run execute as @p run say Awesome, definitely! It was a pleasure meeting you Prof. Darwin!
execute if score @p Timer matches 720 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 800 run tellraw @p ["",{"text":"[C. Darwin]","color":"dark_aqua"},{"text":" And to you as well.","color":"green"}]
execute if score @p Timer matches 800 run execute at @e[name="C. Darwin"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 800 run execute at @e[name="C. Darwin"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 800 run execute at @e[name="C. Darwin"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20


########################################

function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 801 run data merge block -1911 56 794 {auto:0}

# Replace comparator
execute if score @p Timer matches 801 run setblock -1913 56 794 minecraft:comparator[facing=west]

# Reset Timer
execute if score @p Timer matches 801 run function main:timer/reset
