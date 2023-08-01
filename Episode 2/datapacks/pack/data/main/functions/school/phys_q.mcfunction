# Made by EOSand
# PHYS questions

# Give player Q1 tag
execute if entity @p[tag=PHYS_YES] run tag @p add PHYS_Q1_START
execute if entity @p[tag=PHYS_YES] run tag @p remove PHYS_YES

# State Q1
execute if entity @p[tag=PHYS_Q1_START] run tellraw @p ["",{"text":"[S. Hawking]","color":"dark_aqua"},{"text":" Question 1: Which of the following combinations produces stone?","color":"green"}]
execute if entity @p[tag=PHYS_Q1_START] run execute at @e[name="S. Hawking"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if entity @p[tag=PHYS_Q1_START] run execute at @e[name="S. Hawking"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if entity @p[tag=PHYS_Q1_START] run execute at @e[name="S. Hawking"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

# Change blackboard
execute if entity @p[tag=PHYS_Q1_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:803}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:101}}}
execute if entity @p[tag=PHYS_Q1_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:803}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:102}}}
execute if entity @p[tag=PHYS_Q1_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:804}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:103}}}
execute if entity @p[tag=PHYS_Q1_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:804}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:104}}}
execute if entity @p[tag=PHYS_Q1_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:805}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:105}}}
execute if entity @p[tag=PHYS_Q1_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:805}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:106}}}
execute if entity @p[tag=PHYS_Q1_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:806}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:107}}}
execute if entity @p[tag=PHYS_Q1_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:806}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:108}}}
execute if entity @p[tag=PHYS_Q1_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:807}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:109}}}
execute if entity @p[tag=PHYS_Q1_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:807}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:110}}}

# Answers
execute if entity @p[tag=PHYS_Q1_START] run tellraw @p ["",{"text":"\n"},{"text":"SELECT YOUR ANSWER:","color":"gray","bold":true},{"text":"    [A]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q1 1"}},{"text":"  [B]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q1 2"}},{"text":"  [C]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q1 3"}},{"text":"  [D]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q1 4"}},{"text":"\n"}]

# Remove tag
execute if entity @p[tag=PHYS_Q1_START] run tag @p remove PHYS_Q1_START

####################

# Add tag
execute if score @p PHYS_Q1 matches 1.. run tag @p add PHYS_Q2_START

# State Q2
execute if entity @p[tag=PHYS_Q2_START] run tellraw @p ["",{"text":"[S. Hawking]","color":"dark_aqua"},{"text":" Locked in! Question 2: Which of the following does NOT negate/reset ALL fall damage?","color":"green"}]
execute if entity @p[tag=PHYS_Q2_START] run execute at @e[name="S. Hawking"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if entity @p[tag=PHYS_Q2_START] run execute at @e[name="S. Hawking"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if entity @p[tag=PHYS_Q2_START] run execute at @e[name="S. Hawking"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

# Change blackboard
execute if entity @p[tag=PHYS_Q2_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:803}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:111}}}
execute if entity @p[tag=PHYS_Q2_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:803}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:112}}}
execute if entity @p[tag=PHYS_Q2_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:804}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:113}}}
execute if entity @p[tag=PHYS_Q2_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:804}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:114}}}
execute if entity @p[tag=PHYS_Q2_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:805}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:115}}}
execute if entity @p[tag=PHYS_Q2_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:805}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:116}}}
execute if entity @p[tag=PHYS_Q2_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:806}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:117}}}
execute if entity @p[tag=PHYS_Q2_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:806}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:118}}}
execute if entity @p[tag=PHYS_Q2_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:807}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:119}}}
execute if entity @p[tag=PHYS_Q2_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:807}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:120}}}

# Answers
execute if entity @p[tag=PHYS_Q2_START] run tellraw @p ["",{"text":"\n"},{"text":"SELECT YOUR ANSWER:","color":"gray","bold":true},{"text":"    [A]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q2 1"}},{"text":"  [B]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q2 2"}},{"text":"  [C]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q2 3"}},{"text":"  [D]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q2 4"}},{"text":"\n"}]

# Remove tag
execute if entity @p[tag=PHYS_Q2_START] run tag @p remove PHYS_Q2_START

####################

# Add tag
execute if score @p PHYS_Q2 matches 1.. run tag @p add PHYS_Q3_START

# State Q3
execute if score @p PHYS_Q2 matches 0.. run tellraw @p ["",{"text":"[S. Hawking]","color":"dark_aqua"},{"text":" Locked in! Which of the following is the fastest way to travel in the overworld?","color":"green"}]
execute if entity @p[tag=PHYS_Q3_START] run execute at @e[name="S. Hawking"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if entity @p[tag=PHYS_Q3_START] run execute at @e[name="S. Hawking"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if entity @p[tag=PHYS_Q3_START] run execute at @e[name="S. Hawking"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

# Change blackboard
execute if entity @p[tag=PHYS_Q3_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:803}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:121}}}
execute if entity @p[tag=PHYS_Q3_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:803}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:122}}}
execute if entity @p[tag=PHYS_Q3_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:804}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:123}}}
execute if entity @p[tag=PHYS_Q3_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:804}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:124}}}
execute if entity @p[tag=PHYS_Q3_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:805}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:125}}}
execute if entity @p[tag=PHYS_Q3_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:805}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:126}}}
execute if entity @p[tag=PHYS_Q3_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:806}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:127}}}
execute if entity @p[tag=PHYS_Q3_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:806}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:128}}}
execute if entity @p[tag=PHYS_Q3_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:807}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:129}}}
execute if entity @p[tag=PHYS_Q3_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:807}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:130}}}

# Answers
execute if entity @p[tag=PHYS_Q3_START] run tellraw @p ["",{"text":"\n"},{"text":"SELECT YOUR ANSWER:","color":"gray","bold":true},{"text":"    [A]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q3 1"}},{"text":"  [B]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q3 2"}},{"text":"  [C]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q3 3"}},{"text":"  [D]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q3 4"}},{"text":"\n"}]

# Remove tag
execute if entity @p[tag=PHYS_Q3_START] run tag @p remove PHYS_Q3_START

####################

# Answers correct
execute if score @p PHYS_Q1 matches 3 if score @p PHYS_Q2 matches 3 if score @p PHYS_Q3 matches 4 run tag @p add PHYS_CORRECT

# Answers incorrect
execute if score @p PHYS_Q1 matches 1.. if score @p PHYS_Q2 matches 1.. if score @p PHYS_Q3 matches 1.. unless entity @p[tag=PHYS_CORRECT] run tag @p add PHYS_INCORRECT

# If correct
execute if entity @p[tag=PHYS_CORRECT] run function main:school/reset_scores
execute if entity @p[tag=PHYS_CORRECT] run tellraw @p ["",{"text":"[S. Hawking]","color":"dark_aqua"},{"text":" All correct! The second number you seek is: ","color":"green"},{"text":"64 ","color":"aqua"},{"text":". Good luck on the rest of the quizzes!","color":"green"}]
execute if entity @p[tag=PHYS_CORRECT] run execute at @e[name="S. Hawking"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if entity @p[tag=PHYS_CORRECT] run execute at @e[name="S. Hawking"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if entity @p[tag=PHYS_CORRECT] run execute at @e[name="S. Hawking"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20
execute if entity @p[tag=PHYS_CORRECT] run tag @p add SCHOOL_Y
execute if entity @p[tag=PHYS_CORRECT] run data merge block -1916 58 794 {auto:0}
execute if entity @p[tag=PHYS_CORRECT] run setblock -1918 58 794 minecraft:comparator[facing=west]
execute if entity @p[tag=PHYS_CORRECT] run tag @p remove PHYS_CORRECT

# If incorrect
execute if entity @p[tag=PHYS_INCORRECT] run function main:school/reset_scores
execute if entity @p[tag=PHYS_INCORRECT] run tellraw @p ["",{"text":"[S. Hawking]","color":"dark_aqua"},{"text":" Unfortunately, you got at least one question incorrect. Better luck next time!","color":"green"}]
execute if entity @p[tag=PHYS_INCORRECT] run execute at @e[name="S. Hawking"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if entity @p[tag=PHYS_INCORRECT] run execute at @e[name="S. Hawking"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if entity @p[tag=PHYS_INCORRECT] run execute at @e[name="S. Hawking"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20
execute if entity @p[tag=PHYS_INCORRECT] run data merge block -1916 58 794 {auto:0}
execute if entity @p[tag=PHYS_INCORRECT] run setblock -1918 58 794 minecraft:comparator[facing=west]
execute if entity @p[tag=PHYS_INCORRECT] run tag @p remove PHYS_INCORRECT

# If P did all 3 quizzes (put key in locker @ -1973 64 800)
execute if entity @p[tag=SCHOOL_X,tag=SCHOOL_Y,tag=SCHOOL_Z] run data merge block -1973 64 800 {Items:[{id:"minecraft:tripwire_hook",Count:1,Slot:13,tag:{display:{Name:'{"text":"Principal\'s Office Key","color":"aqua","italic":false}'}}}]}
