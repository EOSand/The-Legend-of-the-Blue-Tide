# Made by EOSand
# Main function for all supercomputer operations

##############

# KC lvl 2 -> 3 (tag: SC_KC_lvl3)

# Black Quartz -> Sky Mansion
# Platinum Aurum Ingot -> miner's outpost (outside old Sewer Drain)
# Tear of Moonbeam -> Moonbeam Memorial

# Check if lever on AND if player has recipe enabled; run operation function
execute if block -1996 62 950 minecraft:lever[powered=true] if entity @p[tag=SC_KC_lvl3] run fill -1981 62 949 -1980 61 949 minecraft:redstone_block

# Remove lever
execute if block -1996 62 950 minecraft:lever[powered=true] if entity @p[tag=SC_KC_lvl3] run setblock -1996 62 950 minecraft:air

# Wait until light-flicker cycle reaches 10; end operation function
execute if score @p SC_Light_Cycle matches 10.. run setblock -1981 63 947 minecraft:chain_command_block[facing=south]

# Wait until operation is done; remove items in input; replace new KC in output shulker box; replace sign
execute if entity @p[tag=SC_Done] if entity @p[tag=SC_KC_lvl3] run data merge block -1993 60 942 {Items:[]}
execute if entity @p[tag=SC_Done] if entity @p[tag=SC_KC_lvl3] run data merge block -1993 60 958 {Items:[{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Key Card - Level 3","color":"red","italic":false}'}}}]}
execute if entity @p[tag=SC_Done] if entity @p[tag=SC_KC_lvl3] run data merge block -1996 63 950 {Text2:'{"text":"DETECT","color":"green","bold":true}',Text3:'{"text":"RECIPE","color":"green","bold":true}',Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function main:keycards/keycard_lvl_4"}}'}
#execute if entity @p[tag=SC_Done] if entity @p[tag=SC_KC_lvl3] run scoreboard players set @p SC 3

# Tag P KC_3
execute if entity @p[tag=SC_Done] if entity @p[tag=SC_KC_lvl3] run tag @p add KC_3

# Replace supercomputer command
execute if entity @p[tag=SC_Done] if entity @p[tag=SC_KC_lvl3] run data modify block -1979 61 942 Command set value "function main:keycards/sc_lvl_4"

# Change command for Axel
execute if entity @p[tag=SC_Done] if entity @p[tag=SC_KC_lvl3] run data modify block -1974 61 949 Command set value "function main:dialogues/axel/axel_intermission"

# Change command for checking is P has necessary items
execute if entity @p[tag=SC_Done] if entity @p[tag=SC_KC_lvl3] run data modify block -1970 64 949 Command set value "execute if score @p CPU matches 1 if score @p RAM matches 1 run data merge block -1974 61 949 {Command:\"function main:dialogues/axel/axel_items_3\"}"

# Remove tags
execute if entity @p[tag=SC_Done] if entity @p[tag=SC_KC_lvl3] run tag @p remove SC_KC_lvl3
execute if entity @p[tag=SC_Done] unless entity @p[tag=SC_KC_lvl3] run tag @p remove SC_Done
