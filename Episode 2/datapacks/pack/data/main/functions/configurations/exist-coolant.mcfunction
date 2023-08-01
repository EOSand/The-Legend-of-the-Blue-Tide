# Made by ThePrestigeMC
# Function for coolant (EXIST) configuration

# COOLANT: 1 6 2 7 9 2 5 2 8 9

# Reset scores unless player typing password
execute unless entity @p[tag=Coolant_WIP] run function main:configurations/reset-scores

# Start function
execute unless entity @p[tag=Coolant_OFF] unless entity @p[tag=Coolant_WIP] run tellraw @p ["",{"text":"[EXIST Security] ","color":"yellow"},{"text":"Enter the passcode using the numpad below:","color":"aqua"}]
execute unless entity @p[tag=Coolant_OFF] unless entity @p[tag=Coolant_WIP] run function main:configurations/keypad-num
execute unless entity @p[tag=Coolant_OFF] unless entity @p[tag=Coolant_WIP] run tag @p add Coolant_WIP
execute unless entity @p[tag=Coolant_OFF] if entity @p[tag=Coolant_WIP] run fill -1924 57 825 -1920 57 825 minecraft:air

# Store scores
execute if entity @p[tag=Coolant_WIP] if score @p char matches 1.. unless score @p char10 matches 1.. run scoreboard players operation @p char10 >< @p char
execute if entity @p[tag=Coolant_WIP] if score @p char10 matches 1.. unless score @p char9 matches 1.. run scoreboard players operation @p char9 >< @p char10
execute if entity @p[tag=Coolant_WIP] if score @p char9 matches 1.. unless score @p char8 matches 1.. run scoreboard players operation @p char8 >< @p char9
execute if entity @p[tag=Coolant_WIP] if score @p char8 matches 1.. unless score @p char7 matches 1.. run scoreboard players operation @p char7 >< @p char8
execute if entity @p[tag=Coolant_WIP] if score @p char7 matches 1.. unless score @p char6 matches 1.. run scoreboard players operation @p char6 >< @p char7
execute if entity @p[tag=Coolant_WIP] if score @p char6 matches 1.. unless score @p char5 matches 1.. run scoreboard players operation @p char5 >< @p char6
execute if entity @p[tag=Coolant_WIP] if score @p char5 matches 1.. unless score @p char4 matches 1.. run scoreboard players operation @p char4 >< @p char5
execute if entity @p[tag=Coolant_WIP] if score @p char4 matches 1.. unless score @p char3 matches 1.. run scoreboard players operation @p char3 >< @p char4
execute if entity @p[tag=Coolant_WIP] if score @p char3 matches 1.. unless score @p char2 matches 1.. run scoreboard players operation @p char2 >< @p char3
execute if entity @p[tag=Coolant_WIP] if score @p char2 matches 1.. unless score @p char1 matches 1.. run scoreboard players operation @p char1 >< @p char2

# PW is correct
execute if score @p char1 matches 1 if score @p char2 matches 6 if score @p char3 matches 2 if score @p char4 matches 7 if score @p char5 matches 9 if score @p char6 matches 2 if score @p char7 matches 5 if score @p char8 matches 2 if score @p char9 matches 8 if score @p char10 matches 9 run tag @p add Coolant_SUCCESS

# PW is incorrect
execute if score @p char1 matches 1.. if score @p char2 matches 1.. if score @p char3 matches 1.. if score @p char4 matches 1.. if score @p char5 matches 1.. if score @p char6 matches 1.. if score @p char7 matches 1.. if score @p char8 matches 1.. if score @p char9 matches 1.. if score @p char10 matches 1.. unless entity @p[tag=Coolant_SUCCESS] run tag @p add Coolant_FAIL

# If PW correct
execute if entity @p[tag=Coolant_SUCCESS] run tag @p remove Coolant_WIP
execute if entity @p[tag=Coolant_SUCCESS] run tellraw @p ["",{"text":"[EXIST Security] ","color":"yellow"},{"text":"Passcode verified. ","color":"aqua"},{"text":"EXIST Coolant ","color":"yellow"},{"text":"is now ","color":"aqua"},{"text":"off.","color":"green"}]
execute if entity @p[tag=Coolant_SUCCESS] run setblock -1924 57 825 minecraft:stone_button[face=wall,facing=south]
execute if entity @p[tag=Coolant_SUCCESS] run setblock -1922 57 825 minecraft:stone_button[face=wall,facing=south]
execute if entity @p[tag=Coolant_SUCCESS] run setblock -1920 57 825 minecraft:stone_button[face=wall,facing=south]
execute if entity @p[tag=Coolant_SUCCESS] run data merge block -1914 56 800 {auto:0b}
execute if entity @p[tag=Coolant_SUCCESS] run data merge block -1919 56 800 {auto:0b}
execute if entity @p[tag=Coolant_SUCCESS] run tag @p add Coolant_OFF
execute if entity @p[tag=Coolant_SUCCESS] run tag @p remove Coolant_SUCCESS

execute if entity @p[tag=Coolant_OFF] run data merge block -1920 59 825 {Text4:'{"text":"OFF","color":"red","bold":true}'}
execute if entity @p[tag=Coolant_OFF] run setblock -1921 58 824 minecraft:red_stained_glass

# If PW is incorrect
execute if entity @p[tag=Coolant_FAIL] run tag @p remove Coolant_WIP
execute if entity @p[tag=Coolant_FAIL] run tellraw @p ["",{"text":"[EXIST Security] ","color":"yellow"},{"text":"Passcode incorrect. Press the button to try again.","color":"red"}]
execute if entity @p[tag=Coolant_FAIL] run setblock -1924 57 825 minecraft:stone_button[face=wall,facing=south]
execute if entity @p[tag=Coolant_FAIL] run setblock -1922 57 825 minecraft:stone_button[face=wall,facing=south]
execute if entity @p[tag=Coolant_FAIL] run setblock -1920 57 825 minecraft:stone_button[face=wall,facing=south]
execute if entity @p[tag=Coolant_FAIL] run data merge block -1914 56 800 {auto:0b}
execute if entity @p[tag=Coolant_FAIL] run tag @p remove Coolant_FAIL