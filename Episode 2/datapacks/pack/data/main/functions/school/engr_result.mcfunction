# Made by EOSand
# ENGR quiz results

# Answers correct
execute if score @p ENGR_Q1 matches 3 if score @p ENGR_Q2 matches 2 if score @p ENGR_Q3 matches 1 run tag @p add ENGR_CORRECT

# Answers incorrect
execute if score @p ENGR_Q1 matches 1.. if score @p ENGR_Q2 matches 1.. if score @p ENGR_Q3 matches 1.. unless entity @p[tag=ENGR_CORRECT] run tag @p add ENGR_INCORRECT

# Reset blackboard
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:65,TileZ:812}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:61}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:64,TileZ:812}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:62}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:65,TileZ:813}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:63}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:64,TileZ:813}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:64}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:65,TileZ:814}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:65}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:64,TileZ:814}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:66}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:65,TileZ:815}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:67}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:64,TileZ:815}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:68}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:65,TileZ:816}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:69}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:64,TileZ:816}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:70}}}

# If correct
execute if entity @p[tag=ENGR_CORRECT] run function main:school/reset_scores
execute if entity @p[tag=ENGR_CORRECT] run tellraw @p ["",{"text":"[N. Tesla]","color":"dark_aqua"},{"text":" All correct! The second number you seek is: ","color":"green"},{"text":"800","color":"aqua"},{"text":". Good luck on the rest of the quizzes!","color":"green"}]
execute if entity @p[tag=ENGR_CORRECT] run execute at @e[name="N. Tesla"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if entity @p[tag=ENGR_CORRECT] run execute at @e[name="N. Tesla"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if entity @p[tag=ENGR_CORRECT] run execute at @e[name="N. Tesla"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20
execute if entity @p[tag=ENGR_CORRECT] run tag @p add SCHOOL_Z
execute if entity @p[tag=ENGR_CORRECT] run tag @p remove ENGR_CORRECT

# If incorrect
execute if entity @p[tag=ENGR_INCORRECT] run function main:school/reset_scores
execute if entity @p[tag=ENGR_INCORRECT] run tellraw @p ["",{"text":"[N. Tesla]","color":"dark_aqua"},{"text":" Unfortunately, you got at least one question incorrect. Better luck next time!","color":"green"}]
execute if entity @p[tag=ENGR_INCORRECT] run execute at @e[name="N. Tesla"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if entity @p[tag=ENGR_INCORRECT] run execute at @e[name="N. Tesla"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if entity @p[tag=ENGR_INCORRECT] run execute at @e[name="N. Tesla"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20
execute if entity @p[tag=ENGR_INCORRECT] run tag @p remove ENGR_INCORRECT

# Change dialogue from dia_engr -> dia_engr_2
data modify block -1916 56 794 Command set value "/function main:dialogues/dia_engr_2"

# If P did all 3 quizzes (put key in locker @ -1973 81 800)
execute if entity @p[tag=SCHOOL_X,tag=SCHOOL_Y,tag=SCHOOL_Z] run data merge block -1973 64 800 {Items:[{id:"minecraft:tripwire_hook",Count:1,Slot:13,tag:{display:{Name:'{"text":"Admin Office Key","color":"aqua","italic":false}'}}}]}