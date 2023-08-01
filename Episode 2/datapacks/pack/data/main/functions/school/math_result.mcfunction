# Made by EOSand
# MATH quiz results

# Answers correct
execute if score @p MATH_Q1 matches 3 if score @p MATH_Q2 matches 2 if score @p MATH_Q3 matches 2 run tag @p add MATH_CORRECT

# Answers incorrect
execute if score @p MATH_Q1 matches 1.. if score @p MATH_Q2 matches 1.. if score @p MATH_Q3 matches 1.. unless entity @p[tag=MATH_CORRECT] run tag @p add MATH_INCORRECT

# Reset blackboard 
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:803}] Item.tag.map set value 11
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:803}] Item.tag.map set value 12
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:804}] Item.tag.map set value 13
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:804}] Item.tag.map set value 14
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:805}] Item.tag.map set value 15
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:805}] Item.tag.map set value 16
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:806}] Item.tag.map set value 17
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:806}] Item.tag.map set value 18
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:807}] Item.tag.map set value 19
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:807}] Item.tag.map set value 20

# If correct
execute if entity @p[tag=MATH_CORRECT] run function main:school/reset_scores
execute if entity @p[tag=MATH_CORRECT] run tellraw @p ["",{"text":"[I. Newton]","color":"dark_aqua"},{"text":" All correct! The first number you seek is: ","color":"green"},{"text":"-1973","color":"aqua"},{"text":". Good luck on the rest of the quizzes!","color":"green"}]
execute if entity @p[tag=MATH_CORRECT] run execute at @e[name="I. Newton"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if entity @p[tag=MATH_CORRECT] run execute at @e[name="I. Newton"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if entity @p[tag=MATH_CORRECT] run execute at @e[name="I. Newton"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20
execute if entity @p[tag=MATH_CORRECT] run tag @p add SCHOOL_X
execute if entity @p[tag=MATH_CORRECT] run tag @p remove MATH_CORRECT

# If incorrect
execute if entity @p[tag=MATH_INCORRECT] run function main:school/reset_scores
execute if entity @p[tag=MATH_INCORRECT] run tellraw @p ["",{"text":"[I. Newton]","color":"dark_aqua"},{"text":" Unfortunately, you got at least one question incorrect. Better luck next time!","color":"green"}]
execute if entity @p[tag=MATH_INCORRECT] run execute at @e[name="I. Newton"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if entity @p[tag=MATH_INCORRECT] run execute at @e[name="I. Newton"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if entity @p[tag=MATH_INCORRECT] run execute at @e[name="I. Newton"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20
execute if entity @p[tag=MATH_INCORRECT] run tag @p remove MATH_INCORRECT

# Change dialogue from dia_math -> dia_math_2
data modify block -1916 60 794 Command set value "/function main:dialogues/dia_math_2"

# If P did all 3 quizzes (put key in locker @ -1973 64 800)
execute if entity @p[tag=SCHOOL_X,tag=SCHOOL_Y,tag=SCHOOL_Z] run data merge block -1973 64 800 {Items:[{id:"minecraft:tripwire_hook",Count:1,Slot:13,tag:{display:{Name:'{"text":"Admin Office Key","color":"aqua","italic":false}'}}}]}