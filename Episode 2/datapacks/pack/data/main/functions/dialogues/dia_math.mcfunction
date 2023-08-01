# Made by EOSand
# MATH dialogue

# Remove comparator
execute if score @p Timer matches 0 run setblock -1918 60 794 bricks

# Dialogue
execute if score @p Timer matches 0 run tellraw @p ["",{"text":"[I. Newton]","color":"dark_aqua"},{"text":" Greetings, welcome to the mathematics room!","color":"green"}]
execute if score @p Timer matches 0 run execute at @e[name="I. Newton"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 0 run execute at @e[name="I. Newton"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 0 run execute at @e[name="I. Newton"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"[I. Newton]","color":"dark_aqua"},{"text":" Here, my students learn everything from basic algebra to differ-END-tial calculus.","color":"green"}]
execute if score @p Timer matches 60 run execute at @e[name="I. Newton"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 60 run execute at @e[name="I. Newton"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 60 run execute at @e[name="I. Newton"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 160 run tellraw @p ["",{"text":"[I. Newton]","color":"dark_aqua"},{"text":" In fact, I have a few sample problems which, if you get them all right, I will award you a prize!","color":"green"}]
execute if score @p Timer matches 160 run execute at @e[name="I. Newton"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 160 run execute at @e[name="I. Newton"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 160 run execute at @e[name="I. Newton"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 280 run tellraw @p ["",{"text":"[I. Newton]","color":"dark_aqua"},{"text":" What do you think?","color":"green"}]
execute if score @p Timer matches 280 run execute at @e[name="I. Newton"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 280 run execute at @e[name="I. Newton"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 280 run execute at @e[name="I. Newton"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 300 run tellraw @p ["",{"text":"Solve math problems? ","color":"gray","italic":true},{"text":"YES","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/tag @p add MATH_YES"}},{"text":" | ","color":"gray"},{"text":"NO","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/tag @p add MATH_NO"}}]

# If YES
execute if score @p Timer matches 300.. if entity @p[tag=MATH_YES] run tellraw @p ["",{"text":"[I. Newton]","color":"dark_aqua"},{"text":" Alrighty! Let's begin! Please look at the blackboard for each question.","color":"green"}]
execute if score @p Timer matches 300.. if entity @p[tag=MATH_YES] run execute at @e[name="I. Newton"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 300.. if entity @p[tag=MATH_YES] run execute at @e[name="I. Newton"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 300.. if entity @p[tag=MATH_YES] run execute at @e[name="I. Newton"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20
execute if score @p Timer matches 300.. if entity @p[tag=MATH_YES] run data modify block -1916 60 794 auto set value 0

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 300.. if entity @p[tag=MATH_YES] run data modify block -1919 56 796 auto set value 1

execute if score @p Timer matches 300.. if entity @p[tag=MATH_YES] run function main:school/math_q1

# If NO
execute if score @p Timer matches 300.. if entity @p[tag=MATH_NO] run tellraw @p ["",{"text":"[I. Newton]","color":"dark_aqua"},{"text":" OK! If you ever do, feel free to come back!","color":"green"}]
execute if score @p Timer matches 300.. if entity @p[tag=MATH_NO] run execute at @e[name="I. Newton"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 300.. if entity @p[tag=MATH_NO] run execute at @e[name="I. Newton"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 300.. if entity @p[tag=MATH_NO] run execute at @e[name="I. Newton"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20
execute if score @p Timer matches 300.. if entity @p[tag=MATH_NO] run data modify block -1916 60 794 auto set value 0

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 300.. if entity @p[tag=MATH_NO] run data modify block -1919 56 796 auto set value 1

# Change dialogue from dia_math -> dia_math_2
execute if score @p Timer matches 300.. if entity @p[tag=MATH_NO] run data modify block -1916 60 794 Command set value "/function main:dialogues/dia_math_2"

########################################

function main:timer/increment
