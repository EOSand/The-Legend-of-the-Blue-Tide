# Made by EOSand
# PHYS Q3

# State Q3
tellraw @p ["",{"text":"[S. Hawking]","color":"dark_aqua"},{"text":" Locked in! Which of the following is the fastest way to travel in the overworld?","color":"green"}]
execute at @e[name="S. Hawking"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute at @e[name="S. Hawking"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute at @e[name="S. Hawking"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

# Change blackboard
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:77,TileZ:803}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:121}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:76,TileZ:803}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:122}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:77,TileZ:804}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:123}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:76,TileZ:804}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:124}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:77,TileZ:805}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:125}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:76,TileZ:805}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:126}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:77,TileZ:806}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:127}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:76,TileZ:806}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:128}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:77,TileZ:807}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:129}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:76,TileZ:807}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:130}}}

# Answers
tellraw @p ["",{"text":"\n"},{"text":"SELECT YOUR ANSWER:","color":"gray","bold":true},{"text":"    [A]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q3 1"}},{"text":"  [B]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q3 2"}},{"text":"  [C]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q3 3"}},{"text":"  [D]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p PHYS_Q3 4"}},{"text":"\n"}]

tellraw @p ["",{"text":"Click for the next question ---> ","color":"gray","italic":true},{"text":"NEXT Q","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function main:school/phys_result"}}]