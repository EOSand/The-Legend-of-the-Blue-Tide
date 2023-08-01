# Made by EOSand
# PHYS dialogue

# Remove comparator
execute if score @p Timer matches 0 run setblock -1918 58 794 bricks

# Dialogue
execute if score @p Timer matches 0 run tellraw @p ["",{"text":"[S. Hawking]","color":"dark_aqua"},{"text":" Greetings, welcome to the physics room!","color":"green"}]
execute if score @p Timer matches 0 run execute at @e[name="S. Hawking"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 0 run execute at @e[name="S. Hawking"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 0 run execute at @e[name="S. Hawking"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"[S. Hawking]","color":"dark_aqua"},{"text":" Here, I teach all basic physics concepts including mechanics and water/lava dynamics.","color":"green"}]
execute if score @p Timer matches 60 run execute at @e[name="S. Hawking"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 60 run execute at @e[name="S. Hawking"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 60 run execute at @e[name="S. Hawking"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 160 run tellraw @p ["",{"text":"[S. Hawking]","color":"dark_aqua"},{"text":" Actually, I have some sample physics problems if you'd like to try them!","color":"green"}]
execute if score @p Timer matches 160 run execute at @e[name="S. Hawking"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 160 run execute at @e[name="S. Hawking"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 160 run execute at @e[name="S. Hawking"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 280 run tellraw @p ["",{"text":"[S. Hawking]","color":"dark_aqua"},{"text":" What do you think?","color":"green"}]
execute if score @p Timer matches 280 run execute at @e[name="S. Hawking"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 280 run execute at @e[name="S. Hawking"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 280 run execute at @e[name="S. Hawking"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 300 run tellraw @p ["",{"text":"Solve physics problems? ","color":"gray","italic":true},{"text":"YES","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/tag @p add PHYS_YES"}},{"text":" | ","color":"gray"},{"text":"NO","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/tag @p add PHYS_NO"}}]

# If YES
execute if score @p Timer matches 300.. if entity @p[tag=PHYS_YES] run tellraw @p ["",{"text":"[S. Hawking]","color":"dark_aqua"},{"text":" Awesome! Let's begin! Please look at the blackboard for each question.","color":"green"}]
execute if score @p Timer matches 300.. if entity @p[tag=PHYS_YES] run execute at @e[name="S. Hawking"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 300.. if entity @p[tag=PHYS_YES] run execute at @e[name="S. Hawking"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 300.. if entity @p[tag=PHYS_YES] run execute at @e[name="S. Hawking"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20
execute if score @p Timer matches 300.. if entity @p[tag=PHYS_YES] run data modify block -1916 58 794 auto set value 0

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 300.. if entity @p[tag=PHYS_YES] run data modify block -1917 56 796 auto set value 1

execute if score @p Timer matches 300.. if entity @p[tag=PHYS_YES] run function main:school/phys_q1

# If NO
execute if score @p Timer matches 300.. if entity @p[tag=PHYS_NO] run tellraw @p ["",{"text":"[S. Hawking]","color":"dark_aqua"},{"text":" No worries, please come back again!","color":"green"}]
execute if score @p Timer matches 300.. if entity @p[tag=PHYS_NO] run execute at @e[name="S. Hawking"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 300.. if entity @p[tag=PHYS_NO] run execute at @e[name="S. Hawking"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 300.. if entity @p[tag=PHYS_NO] run execute at @e[name="S. Hawking"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20
execute if score @p Timer matches 300.. if entity @p[tag=PHYS_NO] run data modify block -1916 58 794 auto set value 0

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 300.. if entity @p[tag=PHYS_NO] run data modify block -1917 56 796 auto set value 1

# Change dialogue from dia_phys -> dia_phys_2
execute if score @p Timer matches 300.. if entity @p[tag=PHYS_NO] run data modify block -1916 58 794 Command set value "/function main:dialogues/dia_phys_2"

########################################

function main:timer/increment
