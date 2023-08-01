# Made by EOSand
# MATH Q1

# Remove MATH_YES
tag @p remove MATH_YES

# State Q1
tellraw @p ["",{"text":"[I. Newton]","color":"dark_aqua"},{"text":" Question 1: How many total blocks are in a chunk?","color":"green"}]
execute at @e[name="I. Newton"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute at @e[name="I. Newton"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute at @e[name="I. Newton"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

# Change blackboard
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:803}] Item.tag.map set value 71
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:803}] Item.tag.map set value 72
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:804}] Item.tag.map set value 73
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:804}] Item.tag.map set value 74
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:805}] Item.tag.map set value 75
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:805}] Item.tag.map set value 76
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:806}] Item.tag.map set value 77
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:806}] Item.tag.map set value 78
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:807}] Item.tag.map set value 79
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:807}] Item.tag.map set value 80

# Answers
tellraw @p ["",{"text":"\n"},{"text":"SELECT YOUR ANSWER:","color":"gray","bold":true},{"text":"    [A]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q1 1"}},{"text":"  [B]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q1 2"}},{"text":"  [C]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q1 3"}},{"text":"  [D]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q1 4"}},{"text":"\n"}]

# Prompt for next question
tellraw @p ["",{"text":"Click for the next question ---> ","color":"gray","italic":true},{"text":"NEXT Q","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function main:school/math_q2"}}]