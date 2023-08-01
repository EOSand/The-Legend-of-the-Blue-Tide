# Made by EOSand
# MATH Q2

# State Q2
tellraw @p ["",{"text":"[I. Newton]","color":"dark_aqua"},{"text":" Locked in! Question 2: Using numeric seeds, how many possible worlds are there in Minecraft?","color":"green"}]
execute at @e[name="I. Newton"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute at @e[name="I. Newton"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute at @e[name="I. Newton"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

# Change blackboard
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:803}] Item.tag.map set value 81
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:803}] Item.tag.map set value 82
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:804}] Item.tag.map set value 83
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:804}] Item.tag.map set value 84
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:805}] Item.tag.map set value 85
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:805}] Item.tag.map set value 86
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:806}] Item.tag.map set value 87
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:806}] Item.tag.map set value 88
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:82,TileZ:807}] Item.tag.map set value 89
data modify entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:81,TileZ:807}] Item.tag.map set value 90

# Answers
tellraw @p ["",{"text":"\n"},{"text":"SELECT YOUR ANSWER:","color":"gray","bold":true},{"text":"    [A]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q2 1"}},{"text":"  [B]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q2 2"}},{"text":"  [C]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q2 3"}},{"text":"  [D]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p MATH_Q2 4"}},{"text":"\n"}]

# Prompt for next question
tellraw @p ["",{"text":"Click for the next question ---> ","color":"gray","italic":true},{"text":"NEXT Q","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function main:school/math_q3"}}]