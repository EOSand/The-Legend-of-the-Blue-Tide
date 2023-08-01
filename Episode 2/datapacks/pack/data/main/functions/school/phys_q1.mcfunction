# Made by EOSand
# PHYS Q1

# Remove PHYS_YES
tag @p remove PHYS_YES

# State Q1
tellraw @p ["",{"text":"[S. Hawking]","color":"dark_aqua"},{"text":" Question 1: Which of the following combinations produces stone?","color":"green"}]
execute at @e[name="S. Hawking"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute at @e[name="S. Hawking"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute at @e[name="S. Hawking"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

# Change blackboard
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:77,TileZ:803}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:101}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:76,TileZ:803}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:102}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:77,TileZ:804}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:103}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:76,TileZ:804}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:104}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:77,TileZ:805}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:105}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:76,TileZ:805}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:106}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:77,TileZ:806}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:107}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:76,TileZ:806}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:108}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:77,TileZ:807}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:109}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:76,TileZ:807}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:110}}}

# Answers
tellraw @p ["",{"text":"\n"},{"text":"SELECT YOUR ANSWER:","color":"gray","bold":true},{"text":"    [A]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q1 1"}},{"text":"  [B]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q1 2"}},{"text":"  [C]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q1 3"}},{"text":"  [D]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q1 4"}},{"text":"\n"}]

# Prompt for next question
tellraw @p ["",{"text":"Click for the next question ---> ","color":"gray","italic":true},{"text":"NEXT Q","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function main:school/phys_q2"}}]