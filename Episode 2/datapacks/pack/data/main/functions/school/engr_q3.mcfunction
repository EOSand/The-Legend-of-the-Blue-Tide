# Made by EOSand
# ENGR Q3

# State Q3
tellraw @p ["",{"text":"[N. Tesla]","color":"dark_aqua"},{"text":" Locked in! Finally, which of the following commands CANNOT be used in a command block?","color":"green"}]
execute at @e[name="N. Tesla"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute at @e[name="N. Tesla"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute at @e[name="N. Tesla"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

# Change blackboard
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:65,TileZ:812}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:151}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:64,TileZ:812}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:152}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:65,TileZ:813}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:153}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:64,TileZ:813}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:154}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:65,TileZ:814}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:155}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:64,TileZ:814}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:156}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:65,TileZ:815}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:157}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:64,TileZ:815}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:158}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:65,TileZ:816}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:159}}}
data merge entity @e[type=item_frame,limit=1,nbt={TileX:-1940,TileY:64,TileZ:816}] {Item:{id:"minecraft:filled_map",Count:1,tag:{map:160}}}

# Answers
tellraw @p ["",{"text":"\n"},{"text":"SELECT YOUR ANSWER:","color":"gray","bold":true},{"text":"    [A]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p ENGR_Q3 1"}},{"text":"  [B]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p ENGR_Q3 2"}},{"text":"  [C]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p ENGR_Q3 3"}},{"text":"  [D]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @p ENGR_Q3 4"}},{"text":"\n"}]

tellraw @p ["",{"text":"Click for the next question ---> ","color":"gray","italic":true},{"text":"NEXT Q","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function main:school/engr_result"}}]