# Made by EOSand
# PHYS Q2

# State Q2
tellraw @p ["",{"text":"[S. Hawking]","color":"dark_aqua"},{"text":" Locked in! Question 2: Which of the following does NOT negate/reset ALL fall damage?","color":"green"}]
execute at @e[name="S. Hawking"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute at @e[name="S. Hawking"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute at @e[name="S. Hawking"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

# Change blackboard
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:77,TileZ:803}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:111}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:76,TileZ:803}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:112}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:77,TileZ:804}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:113}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:76,TileZ:804}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:114}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:77,TileZ:805}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:115}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:76,TileZ:805}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:116}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:77,TileZ:806}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:117}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:76,TileZ:806}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:118}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:77,TileZ:807}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:119}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:76,TileZ:807}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:120}}}

# Answers
tellraw @p ["",{"text":"\n"},{"text":"SELECT YOUR ANSWER:","color":"gray","bold":true},{"text":"    [A]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q2 1"}},{"text":"  [B]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q2 2"}},{"text":"  [C]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q2 3"}},{"text":"  [D]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q2 4"}},{"text":"\n"}]

tellraw @p ["",{"text":"Click for the next question ---> ","color":"gray","italic":true},{"text":"NEXT Q","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function main:school/phys_q3"}}]