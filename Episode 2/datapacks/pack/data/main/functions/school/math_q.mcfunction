# Made by EOSand
# MATH questions

# Give player Q1 tag
execute if entity @p[tag=MATH_YES] run tag @p add MATH_Q1_START
execute if entity @p[tag=MATH_YES] run tag @p remove MATH_YES

# State Q1
execute if entity @p[tag=MATH_Q1_START] run tellraw @p ["",{"text":"[I. Newton]","color":"dark_aqua"},{"text":" Question 1: How many total blocks are in a chunk?","color":"green"}]
execute if entity @p[tag=MATH_Q1_START] run execute at @e[name="I. Newton"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if entity @p[tag=MATH_Q1_START] run execute at @e[name="I. Newton"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if entity @p[tag=MATH_Q1_START] run execute at @e[name="I. Newton"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

# Change blackboard
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:803}] Item.tag.map set value 71
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:803}] Item.tag.map set value 72
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:804}] Item.tag.map set value 73
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:804}] Item.tag.map set value 74
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:805}] Item.tag.map set value 75
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:805}] Item.tag.map set value 76
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:806}] Item.tag.map set value 77
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:806}] Item.tag.map set value 78
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:807}] Item.tag.map set value 79
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:807}] Item.tag.map set value 80

# Answers
execute if entity @p[tag=MATH_Q1_START] run tellraw @p ["",{"text":"\n"},{"text":"SELECT YOUR ANSWER:","color":"gray","bold":true},{"text":"    [A]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q1 1"}},{"text":"  [B]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q1 2"}},{"text":"  [C]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q1 3"}},{"text":"  [D]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q1 4"}},{"text":"\n"}]

# Remove tag
execute if entity @p[tag=MATH_Q1_START] run tag @p remove MATH_Q1_START

####################

# Add tag
execute if score @p MATH_Q1 matches 1.. run tag @p add MATH_Q2_START

# State Q2
execute if entity @p[tag=MATH_Q2_START] run tellraw @p ["",{"text":"[I. Newton]","color":"dark_aqua"},{"text":" Locked in! Question 2: Using numeric seeds, how many possible worlds are there in Minecraft?","color":"green"}]
execute if entity @p[tag=MATH_Q2_START] run execute at @e[name="I. Newton"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if entity @p[tag=MATH_Q2_START] run execute at @e[name="I. Newton"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if entity @p[tag=MATH_Q2_START] run execute at @e[name="I. Newton"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

# Change blackboard
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:803}] Item.tag.map set value 81
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:803}] Item.tag.map set value 82
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:804}] Item.tag.map set value 83
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:804}] Item.tag.map set value 84
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:805}] Item.tag.map set value 85
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:805}] Item.tag.map set value 86
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:806}] Item.tag.map set value 87
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:806}] Item.tag.map set value 88
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:807}] Item.tag.map set value 89
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:807}] Item.tag.map set value 90

# Answers
execute if entity @p[tag=MATH_Q2_START] run tellraw @p ["",{"text":"\n"},{"text":"SELECT YOUR ANSWER:","color":"gray","bold":true},{"text":"    [A]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q2 1"}},{"text":"  [B]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q2 2"}},{"text":"  [C]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q2 3"}},{"text":"  [D]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q2 4"}},{"text":"\n"}]

# Remove tag
execute if entity @p[tag=MATH_Q2_START] run tag @p remove MATH_Q2_START

####################

# Add tag
execute if score @p MATH_Q2 matches 1.. run tag @p add MATH_Q3_START

# State Q3
execute if score @p MATH_Q2 matches 0.. run tellraw @p ["",{"text":"[I. Newton]","color":"dark_aqua"},{"text":" Locked in! For question 3, please examine the blackboard and evaluate the expression.","color":"green"}]
execute if entity @p[tag=MATH_Q3_START] run execute at @e[name="I. Newton"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if entity @p[tag=MATH_Q3_START] run execute at @e[name="I. Newton"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if entity @p[tag=MATH_Q3_START] run execute at @e[name="I. Newton"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

# Change blackboard
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:803}] Item.tag.map set value 91
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:803}] Item.tag.map set value 92
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:804}] Item.tag.map set value 93
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:804}] Item.tag.map set value 94
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:805}] Item.tag.map set value 95
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:805}] Item.tag.map set value 96
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:806}] Item.tag.map set value 97
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:806}] Item.tag.map set value 98
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:807}] Item.tag.map set value 99
execute if entity @p[tag=MATH_Q1_START] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:807}] Item.tag.map set value 100

# Answers
execute if entity @p[tag=MATH_Q3_START] run tellraw @p ["",{"text":"\n"},{"text":"SELECT YOUR ANSWER:","color":"gray","bold":true},{"text":"    [A]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q3 1"}},{"text":"  [B]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q3 2"}},{"text":"  [C]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q3 3"}},{"text":"  [D]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q3 4"}},{"text":"\n"}]

# Remove tag
execute if entity @p[tag=MATH_Q3_START] run tag @p remove MATH_Q3_START

####################

# Answers correct
execute if score @p MATH_Q1 matches 3 if score @p MATH_Q2 matches 2 if score @p MATH_Q3 matches 2 run tag @p add MATH_CORRECT

# Answers incorrect
execute if score @p MATH_Q1 matches 1.. if score @p MATH_Q2 matches 1.. if score @p MATH_Q3 matches 1.. unless entity @p[tag=MATH_CORRECT] run tag @p add MATH_INCORRECT

# Reset blackboard 
execute if entity @p[tag=MATH_CORRECT] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:803}] Item.tag.map set value 11
execute if entity @p[tag=MATH_CORRECT] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:803}] Item.tag.map set value 12
execute if entity @p[tag=MATH_CORRECT] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:804}] Item.tag.map set value 13
execute if entity @p[tag=MATH_CORRECT] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:804}] Item.tag.map set value 14
execute if entity @p[tag=MATH_CORRECT] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:805}] Item.tag.map set value 15
execute if entity @p[tag=MATH_CORRECT] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:805}] Item.tag.map set value 16
execute if entity @p[tag=MATH_CORRECT] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:806}] Item.tag.map set value 17
execute if entity @p[tag=MATH_CORRECT] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:806}] Item.tag.map set value 18
execute if entity @p[tag=MATH_CORRECT] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:807}] Item.tag.map set value 19
execute if entity @p[tag=MATH_CORRECT] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:807}] Item.tag.map set value 20

execute if entity @p[tag=MATH_INCORRECT] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:803}] Item.tag.map set value 11
execute if entity @p[tag=MATH_INCORRECT] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:803}] Item.tag.map set value 12
execute if entity @p[tag=MATH_INCORRECT] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:804}] Item.tag.map set value 13
execute if entity @p[tag=MATH_INCORRECT] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:804}] Item.tag.map set value 14
execute if entity @p[tag=MATH_INCORRECT] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:805}] Item.tag.map set value 15
execute if entity @p[tag=MATH_INCORRECT] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:805}] Item.tag.map set value 16
execute if entity @p[tag=MATH_INCORRECT] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:806}] Item.tag.map set value 17
execute if entity @p[tag=MATH_INCORRECT] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:806}] Item.tag.map set value 18
execute if entity @p[tag=MATH_INCORRECT] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:807}] Item.tag.map set value 19
execute if entity @p[tag=MATH_INCORRECT] run data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:807}] Item.tag.map set value 20

# If correct
execute if entity @p[tag=MATH_CORRECT] run function main:school/reset_scores
execute if entity @p[tag=MATH_CORRECT] run tellraw @p ["",{"text":"[I. Newton]","color":"dark_aqua"},{"text":" All correct! The first number you seek is: ","color":"green"},{"text":"-1973 ","color":"aqua"},{"text":". Good luck on the rest of the quizzes!","color":"green"}]
execute if entity @p[tag=MATH_CORRECT] run execute at @e[name="I. Newton"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if entity @p[tag=MATH_CORRECT] run execute at @e[name="I. Newton"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if entity @p[tag=MATH_CORRECT] run execute at @e[name="I. Newton"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20
execute if entity @p[tag=MATH_CORRECT] run tag @p add SCHOOL_X
execute if entity @p[tag=MATH_CORRECT] run data merge block -1916 60 794 {auto:0}
execute if entity @p[tag=MATH_CORRECT] run setblock -1918 60 794 minecraft:comparator[facing=west]
execute if entity @p[tag=MATH_CORRECT] run tag @p remove MATH_CORRECT

# If incorrect
execute if entity @p[tag=MATH_INCORRECT] run function main:school/reset_scores
execute if entity @p[tag=MATH_INCORRECT] run tellraw @p ["",{"text":"[I. Newton]","color":"dark_aqua"},{"text":" Unfortunately, you got at least one question incorrect. Better luck next time!","color":"green"}]
execute if entity @p[tag=MATH_INCORRECT] run execute at @e[name="I. Newton"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if entity @p[tag=MATH_INCORRECT] run execute at @e[name="I. Newton"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if entity @p[tag=MATH_INCORRECT] run execute at @e[name="I. Newton"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20
execute if entity @p[tag=MATH_INCORRECT] run data merge block -1916 60 794 {auto:0}
execute if entity @p[tag=MATH_INCORRECT] run setblock -1918 60 794 minecraft:comparator[facing=west]
execute if entity @p[tag=MATH_INCORRECT] run tag @p remove MATH_INCORRECT

# If P did all 3 quizzes (put key in locker @ -1973 64 800)
execute if entity @p[tag=SCHOOL_X,tag=SCHOOL_Y,tag=SCHOOL_Z] run data merge block -1973 64 800 {Items:[{id:"minecraft:tripwire_hook",Count:1,Slot:13,tag:{display:{Name:'{"text":"Principal\'s Office Key","color":"aqua","italic":false}'}}}]}