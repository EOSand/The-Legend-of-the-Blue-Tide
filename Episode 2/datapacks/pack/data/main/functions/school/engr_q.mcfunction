# Made by EOSand
# ENGR questions

# Give player Q1 tag
execute if entity @p[tag=ENGR_YES] run tag @p add ENGR_Q1_START
execute if entity @p[tag=ENGR_YES] run tag @p remove ENGR_YES

# State Q1
execute if entity @p[tag=ENGR_Q1_START] run tellraw @p ["",{"text":"[N. Tesla]","color":"dark_aqua"},{"text":" Question 1: An active redstone torch powers adjacent redstone dust to which power level?","color":"green"}]
execute if entity @p[tag=ENGR_Q1_START] run execute at @e[name="N. Tesla"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if entity @p[tag=ENGR_Q1_START] run execute at @e[name="N. Tesla"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if entity @p[tag=ENGR_Q1_START] run execute at @e[name="N. Tesla"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

# Change blackboard
execute if entity @p[tag=ENGR_Q1_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:803}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:131}}}
execute if entity @p[tag=ENGR_Q1_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:803}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:132}}}
execute if entity @p[tag=ENGR_Q1_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:804}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:133}}}
execute if entity @p[tag=ENGR_Q1_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:804}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:134}}}
execute if entity @p[tag=ENGR_Q1_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:805}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:135}}}
execute if entity @p[tag=ENGR_Q1_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:805}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:136}}}
execute if entity @p[tag=ENGR_Q1_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:806}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:137}}}
execute if entity @p[tag=ENGR_Q1_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:806}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:138}}}
execute if entity @p[tag=ENGR_Q1_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:807}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:139}}}
execute if entity @p[tag=ENGR_Q1_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:807}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:140}}}

# Answers
execute if entity @p[tag=ENGR_Q1_START] run tellraw @p ["",{"text":"\n"},{"text":"SELECT YOUR ANSWER:","color":"gray","bold":true},{"text":"    [A]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p ENGR_Q1 1"}},{"text":"  [B]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p ENGR_Q1 2"}},{"text":"  [C]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p ENGR_Q1 3"}},{"text":"  [D]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p ENGR_Q1 4"}},{"text":"\n"}]

# Remove tag
execute if entity @p[tag=ENGR_Q1_START] run tag @p remove ENGR_Q1_START

####################

# Add tag
execute if score @p ENGR_Q1 matches 1.. run tag @p add ENGR_Q2_START

# State Q2
execute if entity @p[tag=ENGR_Q2_START] run tellraw @p ["",{"text":"[N. Tesla]","color":"dark_aqua"},{"text":" Locked in! Question 2: Which logical gate is depicted in the image on the blackboard?","color":"green"}]
execute if entity @p[tag=ENGR_Q2_START] run execute at @e[name="N. Tesla"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if entity @p[tag=ENGR_Q2_START] run execute at @e[name="N. Tesla"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if entity @p[tag=ENGR_Q2_START] run execute at @e[name="N. Tesla"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

# Change blackboard
execute if entity @p[tag=ENGR_Q2_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:803}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:141}}}
execute if entity @p[tag=ENGR_Q2_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:803}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:142}}}
execute if entity @p[tag=ENGR_Q2_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:804}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:143}}}
execute if entity @p[tag=ENGR_Q2_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:804}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:144}}}
execute if entity @p[tag=ENGR_Q2_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:805}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:145}}}
execute if entity @p[tag=ENGR_Q2_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:805}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:146}}}
execute if entity @p[tag=ENGR_Q2_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:806}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:147}}}
execute if entity @p[tag=ENGR_Q2_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:806}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:148}}}
execute if entity @p[tag=ENGR_Q2_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:807}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:149}}}
execute if entity @p[tag=ENGR_Q2_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:807}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:150}}}

# Answers
execute if entity @p[tag=ENGR_Q2_START] run tellraw @p ["",{"text":"\n"},{"text":"SELECT YOUR ANSWER:","color":"gray","bold":true},{"text":"    [A]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p ENGR_Q2 1"}},{"text":"  [B]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p ENGR_Q2 2"}},{"text":"  [C]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p ENGR_Q2 3"}},{"text":"  [D]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p ENGR_Q2 4"}},{"text":"\n"}]

# Remove tag
execute if entity @p[tag=ENGR_Q2_START] run tag @p remove ENGR_Q2_START

####################

# Add tag
execute if score @p ENGR_Q2 matches 1.. run tag @p add ENGR_Q3_START

# State Q3
execute if score @p ENGR_Q2 matches 0.. run tellraw @p ["",{"text":"[N. Tesla]","color":"dark_aqua"},{"text":" Locked in! Finally, which of the following commands CANNOT be used in a command block?","color":"green"}]
execute if entity @p[tag=ENGR_Q3_START] run execute at @e[name="N. Tesla"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if entity @p[tag=ENGR_Q3_START] run execute at @e[name="N. Tesla"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if entity @p[tag=ENGR_Q3_START] run execute at @e[name="N. Tesla"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

# Change blackboard
execute if entity @p[tag=ENGR_Q3_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:803}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:151}}}
execute if entity @p[tag=ENGR_Q3_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:803}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:152}}}
execute if entity @p[tag=ENGR_Q3_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:804}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:153}}}
execute if entity @p[tag=ENGR_Q3_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:804}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:154}}}
execute if entity @p[tag=ENGR_Q3_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:805}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:155}}}
execute if entity @p[tag=ENGR_Q3_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:805}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:156}}}
execute if entity @p[tag=ENGR_Q3_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:806}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:157}}}
execute if entity @p[tag=ENGR_Q3_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:806}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:158}}}
execute if entity @p[tag=ENGR_Q3_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:807}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:159}}}
execute if entity @p[tag=ENGR_Q3_START] run data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:807}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:160}}}

# Answers
execute if entity @p[tag=ENGR_Q3_START] run tellraw @p ["",{"text":"\n"},{"text":"SELECT YOUR ANSWER:","color":"gray","bold":true},{"text":"    [A]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p ENGR_Q3 1"}},{"text":"  [B]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p ENGR_Q3 2"}},{"text":"  [C]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p ENGR_Q3 3"}},{"text":"  [D]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p ENGR_Q3 4"}},{"text":"\n"}]

# Remove tag
execute if entity @p[tag=ENGR_Q3_START] run tag @p remove ENGR_Q3_START

####################

# Answers correct
execute if score @p ENGR_Q1 matches 3 if score @p ENGR_Q2 matches 2 if score @p ENGR_Q3 matches 1 run tag @p add ENGR_CORRECT

# Answers incorrect
execute if score @p ENGR_Q1 matches 1.. if score @p ENGR_Q2 matches 1.. if score @p ENGR_Q3 matches 1.. unless entity @p[tag=ENGR_CORRECT] run tag @p add ENGR_INCORRECT

# If correct
execute if entity @p[tag=ENGR_CORRECT] run function main:school/reset_scores
execute if entity @p[tag=ENGR_CORRECT] run tellraw @p ["",{"text":"[N. Tesla]","color":"dark_aqua"},{"text":" All correct! The second number you seek is: ","color":"green"},{"text":"800 ","color":"aqua"},{"text":". Good luck on the rest of the quizzes!","color":"green"}]
execute if entity @p[tag=ENGR_CORRECT] run execute at @e[name="N. Tesla"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if entity @p[tag=ENGR_CORRECT] run execute at @e[name="N. Tesla"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if entity @p[tag=ENGR_CORRECT] run execute at @e[name="N. Tesla"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20
execute if entity @p[tag=ENGR_CORRECT] run tag @p add SCHOOL_Z
execute if entity @p[tag=ENGR_CORRECT] run data merge block -1911 56 794 {auto:0}
execute if entity @p[tag=ENGR_CORRECT] run setblock -1913 56 794 minecraft:comparator[facing=west]
execute if entity @p[tag=ENGR_CORRECT] run tag @p remove ENGR_CORRECT

# If incorrect
execute if entity @p[tag=ENGR_INCORRECT] run function main:school/reset_scores
execute if entity @p[tag=ENGR_INCORRECT] run tellraw @p ["",{"text":"[N. Tesla]","color":"dark_aqua"},{"text":" Unfortunately, you got at least one question incorrect. Better luck next time!","color":"green"}]
execute if entity @p[tag=ENGR_INCORRECT] run execute at @e[name="N. Tesla"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if entity @p[tag=ENGR_INCORRECT] run execute at @e[name="N. Tesla"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if entity @p[tag=ENGR_INCORRECT] run execute at @e[name="N. Tesla"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20
execute if entity @p[tag=ENGR_INCORRECT] run data merge block -1911 56 794 {auto:0}
execute if entity @p[tag=ENGR_INCORRECT] run setblock -1913 56 794 minecraft:comparator[facing=west]
execute if entity @p[tag=ENGR_INCORRECT] run tag @p remove ENGR_INCORRECT

# If P did all 3 quizzes (put key in locker @ -1973 64 800)
execute if entity @p[tag=SCHOOL_X,tag=SCHOOL_Y,tag=SCHOOL_Z] run data merge block -1973 64 800 {Items:[{id:"minecraft:tripwire_hook",Count:1,Slot:13,tag:{display:{Name:'{"text":"Principal\'s Office Key","color":"aqua","italic":false}'}}}]}
