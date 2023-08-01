# Made by EOSand
# PHYS dialogue (2nd visit)

# RUN ONLY IF PLAYER HAS COMPLETED QUIZ
execute if entity @p[tag=SCHOOL_Z] run tellraw @p ["",{"text":"[N. Tesla]","color":"dark_aqua"},{"text":" You've already completed this quiz! Head to the maths or physics room!","color":"green"}]
execute if entity @p[tag=SCHOOL_Z] run execute at @e[name="N. Tesla"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if entity @p[tag=SCHOOL_Z] run execute at @e[name="N. Tesla"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if entity @p[tag=SCHOOL_Z] run execute at @e[name="N. Tesla"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20
execute if entity @p[tag=SCHOOL_Z] run data modify block -1916 56 794 auto set value 0

# Remove comparator
execute if score @p Timer matches 0 run setblock -1918 56 794 bricks

# Dialogue
execute unless entity @p[tag=SCHOOL_Z] if score @p Timer matches 0 run tellraw @p ["",{"text":"[N. Tesla]","color":"dark_aqua"},{"text":" Are you ready?","color":"green"}]
execute unless entity @p[tag=SCHOOL_Z] if score @p Timer matches 0 run execute at @e[name="N. Tesla"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute unless entity @p[tag=SCHOOL_Z] if score @p Timer matches 0 run execute at @e[name="N. Tesla"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute unless entity @p[tag=SCHOOL_Z] if score @p Timer matches 0 run execute at @e[name="N. Tesla"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 20 run tellraw @p ["",{"text":"Solve engineering problems? ","color":"gray","italic":true},{"text":"YES","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/tag @p add ENGR_YES"}},{"text":" | ","color":"gray"},{"text":"NO","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/tag @p add ENGR_NO"}}]

# If YES
execute if score @p Timer matches 20.. if entity @p[tag=ENGR_YES] run tellraw @p ["",{"text":"[N. Tesla]","color":"dark_aqua"},{"text":" Perfect! Let's begin! Please look at the blackboard for each question.","color":"green"}]
execute if score @p Timer matches 20.. if entity @p[tag=ENGR_YES] run execute at @e[name="N. Tesla"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 20.. if entity @p[tag=ENGR_YES] run execute at @e[name="N. Tesla"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 20.. if entity @p[tag=ENGR_YES] run execute at @e[name="N. Tesla"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20
execute if score @p Timer matches 20.. if entity @p[tag=ENGR_YES] run data modify block -1916 56 794 auto set value 0
execute if score @p Timer matches 20.. if entity @p[tag=ENGR_YES] run function main:school/engr_q1

# If NO
execute if score @p Timer matches 20.. if entity @p[tag=ENGR_NO] run tellraw @p ["",{"text":"[N. Tesla]","color":"dark_aqua"},{"text":" It's alright, feel free to come back whenever you'd like!","color":"green"}]
execute if score @p Timer matches 20.. if entity @p[tag=ENGR_NO] run execute at @e[name="N. Tesla"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 20.. if entity @p[tag=ENGR_NO] run execute at @e[name="N. Tesla"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 20.. if entity @p[tag=ENGR_NO] run execute at @e[name="N. Tesla"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20
execute if score @p Timer matches 20.. if entity @p[tag=ENGR_NO] run data modify block -1916 56 794 auto set value 0

########################################

function main:timer/increment