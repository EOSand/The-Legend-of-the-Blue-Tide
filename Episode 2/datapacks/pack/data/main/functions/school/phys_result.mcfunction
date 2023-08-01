# Made by EOSand
# PHYS quiz results

# Answers correct
execute if score @p PHYS_Q1 matches 3 if score @p PHYS_Q2 matches 3 if score @p PHYS_Q3 matches 1 run tag @p add PHYS_CORRECT

# Answers incorrect
execute if score @p PHYS_Q1 matches 1.. if score @p PHYS_Q2 matches 1.. if score @p PHYS_Q3 matches 1.. unless entity @p[tag=PHYS_CORRECT] run tag @p add PHYS_INCORRECT

# Reset blackboard
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:77,TileZ:803}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:31}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:76,TileZ:803}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:32}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:77,TileZ:804}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:33}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:76,TileZ:804}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:34}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:77,TileZ:805}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:35}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:76,TileZ:805}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:36}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:77,TileZ:806}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:37}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:76,TileZ:806}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:38}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:77,TileZ:807}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:39}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:76,TileZ:807}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:40}}}

# If correct
execute if entity @p[tag=PHYS_CORRECT] run function main:school/reset_scores
execute if entity @p[tag=PHYS_CORRECT] run tellraw @p ["",{"text":"[S. Hawking]","color":"dark_aqua"},{"text":" All correct! The second number you seek is: ","color":"green"},{"text":"64","color":"aqua"},{"text":". Good luck on the rest of the quizzes!","color":"green"}]
execute if entity @p[tag=PHYS_CORRECT] run execute at @e[name="S. Hawking"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if entity @p[tag=PHYS_CORRECT] run execute at @e[name="S. Hawking"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if entity @p[tag=PHYS_CORRECT] run execute at @e[name="S. Hawking"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20
execute if entity @p[tag=PHYS_CORRECT] run tag @p add SCHOOL_Y
execute if entity @p[tag=PHYS_CORRECT] run tag @p remove PHYS_CORRECT

# If incorrect
execute if entity @p[tag=PHYS_INCORRECT] run function main:school/reset_scores
execute if entity @p[tag=PHYS_INCORRECT] run tellraw @p ["",{"text":"[S. Hawking]","color":"dark_aqua"},{"text":" Unfortunately, you got at least one question incorrect. Better luck next time!","color":"green"}]
execute if entity @p[tag=PHYS_INCORRECT] run execute at @e[name="S. Hawking"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if entity @p[tag=PHYS_INCORRECT] run execute at @e[name="S. Hawking"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if entity @p[tag=PHYS_INCORRECT] run execute at @e[name="S. Hawking"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20
execute if entity @p[tag=PHYS_INCORRECT] run tag @p remove PHYS_INCORRECT

# Change dialogue from dia_phys -> dia_phys_2
data modify block -1916 58 794 Command set value "/function main:dialogues/dia_phys_2"

# If P did all 3 quizzes (put key in locker @ -1973 64 800)
execute if entity @p[tag=SCHOOL_X,tag=SCHOOL_Y,tag=SCHOOL_Z] run data merge block -1973 64 800 {Items:[{id:"minecraft:tripwire_hook",Count:1,Slot:13,tag:{display:{Name:'{"text":"Admin Office Key","color":"aqua","italic":false}'}}}]}
