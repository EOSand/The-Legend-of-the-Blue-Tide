# Made by EOSand
# MATH Q3

# State Q3
tellraw @p ["",{"text":"[I. Newton]","color":"dark_aqua"},{"text":" Locked in! For question 3, please examine the blackboard and evaluate the expression.","color":"green"}]
execute at @e[name="I. Newton"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute at @e[name="I. Newton"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute at @e[name="I. Newton"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

# Change blackboard
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:803}] Item.tag.map set value 91
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:803}] Item.tag.map set value 92
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:804}] Item.tag.map set value 93
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:804}] Item.tag.map set value 94
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:805}] Item.tag.map set value 95
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:805}] Item.tag.map set value 96
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:806}] Item.tag.map set value 97
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:806}] Item.tag.map set value 98
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:807}] Item.tag.map set value 99
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:807}] Item.tag.map set value 100

# Answers
tellraw @p ["",{"text":"\n"},{"text":"SELECT YOUR ANSWER:","color":"gray","bold":true},{"text":"    [A]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q3 1"}},{"text":"  [B]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q3 2"}},{"text":"  [C]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q3 3"}},{"text":"  [D]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q3 4"}},{"text":"\n"}]

# Prompt for next question
tellraw @p ["",{"text":"Click for the quiz results ---> ","color":"gray","italic":true},{"text":"RESULTS","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function main:school/math_result"}}]