# Made by EOSand
# ENGR dialogue

# Remove comparator
execute if score @p Timer matches 0 run setblock -1918 56 794 bricks

# Dialogue
execute if score @p Timer matches 0 run tellraw @p ["",{"text":"[N. Tesla]","color":"dark_aqua"},{"text":" Hello, welcome to the engineering room!","color":"green"}]
execute if score @p Timer matches 0 run execute at @e[name="N. Tesla"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 0 run execute at @e[name="N. Tesla"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 0 run execute at @e[name="N. Tesla"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"[N. Tesla]","color":"dark_aqua"},{"text":" Here, we learn all sorts of engineering topics including redstone circuit theory and command-building.","color":"green"}]
execute if score @p Timer matches 60 run execute at @e[name="N. Tesla"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 60 run execute at @e[name="N. Tesla"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 60 run execute at @e[name="N. Tesla"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 160 run tellraw @p ["",{"text":"[N. Tesla]","color":"dark_aqua"},{"text":" In fact, I have some sample prompts if you'd like to test your engineering knowledge.","color":"green"}]
execute if score @p Timer matches 160 run execute at @e[name="N. Tesla"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 160 run execute at @e[name="N. Tesla"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 160 run execute at @e[name="N. Tesla"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 280 run tellraw @p ["",{"text":"[N. Tesla]","color":"dark_aqua"},{"text":" What do you think?","color":"green"}]
execute if score @p Timer matches 280 run execute at @e[name="N. Tesla"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 280 run execute at @e[name="N. Tesla"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 280 run execute at @e[name="N. Tesla"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 300 run tellraw @p ["",{"text":"Solve engineering problems? ","color":"gray","italic":true},{"text":"YES","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/tag @p add ENGR_YES"}},{"text":" | ","color":"gray"},{"text":"NO","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/tag @p add ENGR_NO"}}]

# If YES
execute if score @p Timer matches 300.. if entity @p[tag=ENGR_YES] run tellraw @p ["",{"text":"[N. Tesla]","color":"dark_aqua"},{"text":" Perfect! Let's begin! Please look at the blackboard for each question.","color":"green"}]
execute if score @p Timer matches 300.. if entity @p[tag=ENGR_YES] run execute at @e[name="N. Tesla"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 300.. if entity @p[tag=ENGR_YES] run execute at @e[name="N. Tesla"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 300.. if entity @p[tag=ENGR_YES] run execute at @e[name="N. Tesla"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20
execute if score @p Timer matches 300.. if entity @p[tag=ENGR_YES] run data merge block -1916 56 794 {auto:0}

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 300.. if entity @p[tag=ENGR_YES] run data modify block -1915 56 796 auto set value 1

execute if score @p Timer matches 300.. if entity @p[tag=ENGR_YES] run function main:school/engr_q1

# If NO
execute if score @p Timer matches 300.. if entity @p[tag=ENGR_NO] run tellraw @p ["",{"text":"[N. Tesla]","color":"dark_aqua"},{"text":" It's alright, feel free to come back whenever you'd like!","color":"green"}]
execute if score @p Timer matches 300.. if entity @p[tag=ENGR_NO] run execute at @e[name="N. Tesla"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 300.. if entity @p[tag=ENGR_NO] run execute at @e[name="N. Tesla"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 300.. if entity @p[tag=ENGR_NO] run execute at @e[name="N. Tesla"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20
execute if score @p Timer matches 300.. if entity @p[tag=ENGR_NO] run data merge block -1916 56 794 {auto:0}

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 300.. if entity @p[tag=ENGR_NO] run data modify block -1915 56 796 auto set value 1

# Change dialogue from dia_engr -> dia_engr_2
execute if score @p Timer matches 300.. if entity @p[tag=ENGR_NO] run data modify block -1916 56 794 Command set value "/function main:dialogues/dia_engr_2"

########################################

function main:timer/increment
