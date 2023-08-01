# Made by ThePrestigeMC
# Function for Generator 2 configuration

# GEN 2: myrefall : 13 25 18 5 6 1 12 12

# Reset scores unless player typing password
execute unless entity @p[tag=Gen2_WIP] run function main:configurations/reset-scores

# Start function
execute unless entity @p[tag=Gen2_ON] unless entity @p[tag=Gen2_WIP] run tellraw @p ["",{"text":"[BluSci Labs] ","color":"blue"},{"text":"Enter the password using the keypad below:","color":"aqua"}]
execute unless entity @p[tag=Gen2_ON] unless entity @p[tag=Gen2_WIP] run function main:configurations/keypad-alphabet
execute unless entity @p[tag=Gen2_ON] unless entity @p[tag=Gen2_WIP] run tag @p add Gen2_WIP
execute unless entity @p[tag=Gen2_ON] if entity @p[tag=Gen2_WIP] run fill -1963 88 879 -1960 88 879 minecraft:air

# Store scores
execute if entity @p[tag=Gen2_WIP] if score @p char matches 1.. unless score @p char8 matches 1.. run scoreboard players operation @p char8 >< @p char
execute if entity @p[tag=Gen2_WIP] if score @p char8 matches 1.. unless score @p char7 matches 1.. run scoreboard players operation @p char7 >< @p char8
execute if entity @p[tag=Gen2_WIP] if score @p char7 matches 1.. unless score @p char6 matches 1.. run scoreboard players operation @p char6 >< @p char7
execute if entity @p[tag=Gen2_WIP] if score @p char6 matches 1.. unless score @p char5 matches 1.. run scoreboard players operation @p char5 >< @p char6
execute if entity @p[tag=Gen2_WIP] if score @p char5 matches 1.. unless score @p char4 matches 1.. run scoreboard players operation @p char4 >< @p char5
execute if entity @p[tag=Gen2_WIP] if score @p char4 matches 1.. unless score @p char3 matches 1.. run scoreboard players operation @p char3 >< @p char4
execute if entity @p[tag=Gen2_WIP] if score @p char3 matches 1.. unless score @p char2 matches 1.. run scoreboard players operation @p char2 >< @p char3
execute if entity @p[tag=Gen2_WIP] if score @p char2 matches 1.. unless score @p char1 matches 1.. run scoreboard players operation @p char1 >< @p char2

# PW is correct
execute if score @p char1 matches 13 if score @p char2 matches 25 if score @p char3 matches 18 if score @p char4 matches 5 if score @p char5 matches 6 if score @p char6 matches 1 if score @p char7 matches 12 if score @p char8 matches 12 run tag @p add Gen2_SUCCESS

# PW is incorrect
execute if score @p char1 matches 1.. if score @p char2 matches 1.. if score @p char3 matches 1.. if score @p char4 matches 1.. if score @p char5 matches 1.. if score @p char6 matches 1.. if score @p char7 matches 1.. if score @p char8 matches 1.. unless entity @p[tag=Gen2_SUCCESS] run tag @p add Gen2_FAIL

# If PW correct
execute if entity @p[tag=Gen2_SUCCESS] run tag @p remove Gen2_WIP
execute if entity @p[tag=Gen2_SUCCESS] run tellraw @p ["",{"text":"[BluSci Labs] ","color":"blue"},{"text":"Password verified. ","color":"aqua"},{"text":"Generator 2 ","color":"yellow"},{"text":"is now ","color":"aqua"},{"text":"online","color":"green"}]
execute if entity @p[tag=Gen2_SUCCESS] run fill -1963 88 879 -1960 88 879 minecraft:stone_button[facing=south,face=wall]
execute if entity @p[tag=Gen2_SUCCESS] run data merge block -1962 81 917 {auto:0b}
execute if entity @p[tag=Gen2_SUCCESS] run data merge block -1966 81 917 {auto:0b}
execute if entity @p[tag=Gen2_SUCCESS] run tag @p add Gen2_ON
execute if entity @p[tag=Gen2_SUCCESS] run tag @p remove Gen2_SUCCESS

execute if entity @p[tag=Gen2_ON] run data merge block -1962 89 879 {Text4:'{"text":"ON","color":"green","bold":true}'}
execute if entity @p[tag=Gen2_ON] run fill -1962 90 873 -1961 89 872 minecraft:glowstone

# If PW is incorrect
execute if entity @p[tag=Gen2_FAIL] run tag @p remove Gen2_WIP
execute if entity @p[tag=Gen2_FAIL] run tellraw @p ["",{"text":"[BluSci Labs] ","color":"blue"},{"text":"Password incorrect. Press the button to try again.","color":"red"}]
execute if entity @p[tag=Gen2_FAIL] run fill -1963 88 879 -1960 88 879 minecraft:stone_button[facing=south,face=wall]
execute if entity @p[tag=Gen2_FAIL] run data merge block -1962 81 917 {auto:0b}
execute if entity @p[tag=Gen2_FAIL] run tag @p remove Gen2_FAIL
