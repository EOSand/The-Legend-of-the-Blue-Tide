# Made by ESand
# CHEM dialogue

# Remove comparator
execute if score @p Timer matches 0 run setblock -1913 58 794 minecraft:bricks

# Dialogue
execute if score @p Timer matches 0 run tellraw @p ["",{"text":"[M. Curie]","color":"dark_aqua"},{"text":" Good day! Welcome to the chemistry room!","color":"green"}]
execute if score @p Timer matches 0 run execute at @e[name="M. Curie"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 0 run execute at @e[name="M. Curie"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 0 run execute at @e[name="M. Curie"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"[M. Curie]","color":"dark_aqua"},{"text":" Here, my students learn a wide variety of chemistry topics from organic chemistry to solutions to electrochemistry.","color":"green"}]
execute if score @p Timer matches 60 run execute at @e[name="M. Curie"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 60 run execute at @e[name="M. Curie"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 60 run execute at @e[name="M. Curie"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 190 run execute as @p run say Chemistry is always something that interested me, but it was really complicated and diffcult.
execute if score @p Timer matches 190 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 260 run tellraw @p ["",{"text":"[M. Curie]","color":"dark_aqua"},{"text":" Yeah, chemistry is one of those subjects you either love or hate; there's almost no in between.","color":"green"}]
execute if score @p Timer matches 260 run execute at @e[name="M. Curie"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 260 run execute at @e[name="M. Curie"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 260 run execute at @e[name="M. Curie"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 360 run tellraw @p ["",{"text":"[M. Curie]","color":"dark_aqua"},{"text":" Well, since you don't seem to know much about the subject, there's no point in giving you any sample problems.","color":"green"}]
execute if score @p Timer matches 360 run execute at @e[name="M. Curie"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 360 run execute at @e[name="M. Curie"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 360 run execute at @e[name="M. Curie"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 460 run execute as @p run say OK, no worries! It was nice to meet you Prof. Curie!
execute if score @p Timer matches 460 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 520 run tellraw @p ["",{"text":"[M. Curie]","color":"dark_aqua"},{"text":" Of course, it was my pleasure.","color":"green"}]
execute if score @p Timer matches 520 run execute at @e[name="M. Curie"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 520 run execute at @e[name="M. Curie"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 520 run execute at @e[name="M. Curie"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20


########################################

function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 521 run data merge block -1911 58 794 {auto:0}

# Replace comparator
execute if score @p Timer matches 521 run setblock -1913 58 794 minecraft:comparator[facing=west]

# Reset Timer
execute if score @p Timer matches 521 run function main:timer/reset
