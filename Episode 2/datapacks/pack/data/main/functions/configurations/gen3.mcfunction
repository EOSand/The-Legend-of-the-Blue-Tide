# Made by ThePrestigeMC
# Function for Generator 2 configuration

# GEN 3: monscollis : 13 15 14 19 3 15 12 12 9 19 

# Reset scores unless player typing password
execute unless entity @p[tag=Gen3_WIP] run function main:configurations/reset-scores

# Start function
execute unless entity @p[tag=Gen3_ON] unless entity @p[tag=Gen3_WIP] run tellraw @p ["",{"text":"[BluSci Labs] ","color":"blue"},{"text":"Enter the password using the keypad below:","color":"aqua"}]
execute unless entity @p[tag=Gen3_ON] unless entity @p[tag=Gen3_WIP] run function main:configurations/keypad-alphabet
execute unless entity @p[tag=Gen3_ON] unless entity @p[tag=Gen3_WIP] run tag @p add Gen3_WIP
execute unless entity @p[tag=Gen3_ON] if entity @p[tag=Gen3_WIP] run fill -1963 88 879 -1960 88 879 minecraft:air

# Store scores
execute if entity @p[tag=Gen3_WIP] if score @p char matches 1.. unless score @p char10 matches 1.. run scoreboard players operation @p char10 >< @p char
execute if entity @p[tag=Gen3_WIP] if score @p char10 matches 1.. unless score @p char9 matches 1.. run scoreboard players operation @p char9 >< @p char10
execute if entity @p[tag=Gen3_WIP] if score @p char9 matches 1.. unless score @p char8 matches 1.. run scoreboard players operation @p char8 >< @p char9
execute if entity @p[tag=Gen3_WIP] if score @p char8 matches 1.. unless score @p char7 matches 1.. run scoreboard players operation @p char7 >< @p char8
execute if entity @p[tag=Gen3_WIP] if score @p char7 matches 1.. unless score @p char6 matches 1.. run scoreboard players operation @p char6 >< @p char7
execute if entity @p[tag=Gen3_WIP] if score @p char6 matches 1.. unless score @p char5 matches 1.. run scoreboard players operation @p char5 >< @p char6
execute if entity @p[tag=Gen3_WIP] if score @p char5 matches 1.. unless score @p char4 matches 1.. run scoreboard players operation @p char4 >< @p char5
execute if entity @p[tag=Gen3_WIP] if score @p char4 matches 1.. unless score @p char3 matches 1.. run scoreboard players operation @p char3 >< @p char4
execute if entity @p[tag=Gen3_WIP] if score @p char3 matches 1.. unless score @p char2 matches 1.. run scoreboard players operation @p char2 >< @p char3
execute if entity @p[tag=Gen3_WIP] if score @p char2 matches 1.. unless score @p char1 matches 1.. run scoreboard players operation @p char1 >< @p char2

# PW is correct
execute if score @p char1 matches 13 if score @p char2 matches 15 if score @p char3 matches 14 if score @p char4 matches 19 if score @p char5 matches 3 if score @p char6 matches 15 if score @p char7 matches 12 if score @p char8 matches 12 if score @p char9 matches 9 if score @p char10 matches 19 run tag @p add Gen3_SUCCESS

# PW is incorrect
execute if score @p char1 matches 1.. if score @p char2 matches 1.. if score @p char3 matches 1.. if score @p char4 matches 1.. if score @p char5 matches 1.. if score @p char6 matches 1.. if score @p char7 matches 1.. if score @p char8 matches 1.. if score @p char9 matches 1.. if score @p char10 matches 1.. unless entity @p[tag=Gen3_SUCCESS] run tag @p add Gen3_FAIL

# If PW correct
execute if entity @p[tag=Gen3_SUCCESS] run tag @p remove Gen3_WIP
execute if entity @p[tag=Gen3_SUCCESS] run tellraw @p ["",{"text":"[BluSci Labs] ","color":"blue"},{"text":"Password verified. ","color":"aqua"},{"text":"Generator 3 ","color":"yellow"},{"text":"is now ","color":"aqua"},{"text":"online","color":"green"}]
execute if entity @p[tag=Gen3_SUCCESS] run fill -1963 88 879 -1960 88 879 minecraft:stone_button[facing=south,face=wall]
execute if entity @p[tag=Gen3_SUCCESS] run data merge block -1956 79 917 {auto:0b}
execute if entity @p[tag=Gen3_SUCCESS] run data merge block -1960 79 917 {auto:0b}
execute if entity @p[tag=Gen3_SUCCESS] run tag @p add Gen3_ON
execute if entity @p[tag=Gen3_SUCCESS] run tag @p remove Gen3_SUCCESS

execute if entity @p[tag=Gen3_ON] run data merge block -1961 89 879 {Text4:'{"text":"ON","color":"green","bold":true}'}
execute if entity @p[tag=Gen3_ON] run fill -1956 90 878 -1955 89 879 minecraft:glowstone

# If PW is incorrect
execute if entity @p[tag=Gen3_FAIL] run tag @p remove Gen3_WIP
execute if entity @p[tag=Gen3_FAIL] run tellraw @p ["",{"text":"[BluSci Labs] ","color":"blue"},{"text":"Password incorrect. Press the button to try again.","color":"red"}]
execute if entity @p[tag=Gen3_FAIL] run fill -1963 88 879 -1960 88 879 minecraft:stone_button[facing=south,face=wall]
execute if entity @p[tag=Gen3_FAIL] run data merge block -1956 79 917 {auto:0b}
execute if entity @p[tag=Gen3_FAIL] run tag @p remove Gen3_FAIL