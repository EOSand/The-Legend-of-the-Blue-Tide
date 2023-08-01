# Made by EOSand
# ENGR Q1

# Remove ENGR_YES
tag @p remove ENGR_YES

# State Q1
tellraw @p ["",{"text":"[N. Tesla]","color":"dark_aqua"},{"text":" Question 1: An active redstone torch powers adjacent redstone dust to which power level?","color":"green"}]
execute at @e[name="N. Tesla"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute at @e[name="N. Tesla"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute at @e[name="N. Tesla"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

# Change blackboard
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:65,TileZ:812}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:131}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:64,TileZ:812}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:132}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:65,TileZ:813}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:133}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:64,TileZ:813}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:134}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:65,TileZ:814}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:135}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:64,TileZ:814}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:136}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:65,TileZ:815}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:137}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:64,TileZ:815}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:138}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:65,TileZ:816}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:139}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:64,TileZ:816}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:140}}}

# Answers
tellraw @p ["",{"text":"\n"},{"text":"SELECT YOUR ANSWER:","color":"gray","bold":true},{"text":"    [A]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p ENGR_Q1 1"}},{"text":"  [B]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p ENGR_Q1 2"}},{"text":"  [C]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p ENGR_Q1 3"}},{"text":"  [D]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p ENGR_Q1 4"}},{"text":"\n"}]

# Prompt for next question
tellraw @p ["",{"text":"Click for the next question ---> ","color":"gray","italic":true},{"text":"NEXT Q","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function main:school/engr_q2"}}]