# Made by ThePrestigeMC
# Function for Manholes configuration

# MANHOLES: 4 6 2 8 0 3 9 2 9 6

# Reset scores unless player typing password
execute unless entity @p[tag=Manholes_WIP] run function main:configurations/reset-scores

# Start function
execute unless entity @p[tag=Manholes_ON] unless entity @p[tag=Manholes_WIP] run tellraw @p ["",{"text":"[EXIST Security] ","color":"yellow"},{"text":"Enter the passcode using the numpad below:","color":"aqua"}]
execute unless entity @p[tag=Manholes_ON] unless entity @p[tag=Manholes_WIP] run function main:configurations/keypad-num
execute unless entity @p[tag=Manholes_ON] unless entity @p[tag=Manholes_WIP] run tag @p add Manholes_WIP
execute unless entity @p[tag=Manholes_ON] if entity @p[tag=Manholes_WIP] run fill -1924 57 825 -1920 57 825 minecraft:air

# Store scores
execute if entity @p[tag=Manholes_WIP] if score @p char matches 1.. unless score @p char10 matches 1.. run scoreboard players operation @p char10 >< @p char
execute if entity @p[tag=Manholes_WIP] if score @p char10 matches 1.. unless score @p char9 matches 1.. run scoreboard players operation @p char9 >< @p char10
execute if entity @p[tag=Manholes_WIP] if score @p char9 matches 1.. unless score @p char8 matches 1.. run scoreboard players operation @p char8 >< @p char9
execute if entity @p[tag=Manholes_WIP] if score @p char8 matches 1.. unless score @p char7 matches 1.. run scoreboard players operation @p char7 >< @p char8
execute if entity @p[tag=Manholes_WIP] if score @p char7 matches 1.. unless score @p char6 matches 1.. run scoreboard players operation @p char6 >< @p char7
execute if entity @p[tag=Manholes_WIP] if score @p char6 matches 1.. unless score @p char5 matches 1.. run scoreboard players operation @p char5 >< @p char6
execute if entity @p[tag=Manholes_WIP] if score @p char5 matches 1.. unless score @p char4 matches 1.. run scoreboard players operation @p char4 >< @p char5
execute if entity @p[tag=Manholes_WIP] if score @p char4 matches 1.. unless score @p char3 matches 1.. run scoreboard players operation @p char3 >< @p char4
execute if entity @p[tag=Manholes_WIP] if score @p char3 matches 1.. unless score @p char2 matches 1.. run scoreboard players operation @p char2 >< @p char3
execute if entity @p[tag=Manholes_WIP] if score @p char2 matches 1.. unless score @p char1 matches 1.. run scoreboard players operation @p char1 >< @p char2

# PW is correct
execute if score @p char1 matches 4 if score @p char2 matches 6 if score @p char3 matches 2 if score @p char4 matches 8 if score @p char5 matches 10 if score @p char6 matches 3 if score @p char7 matches 9 if score @p char8 matches 2 if score @p char9 matches 9 if score @p char10 matches 6 run tag @p add Manholes_SUCCESS

# PW is incorrect
execute if score @p char1 matches 1.. if score @p char2 matches 1.. if score @p char3 matches 1.. if score @p char4 matches 1.. if score @p char5 matches 1.. if score @p char6 matches 1.. if score @p char7 matches 1.. if score @p char8 matches 1.. if score @p char9 matches 1.. if score @p char10 matches 1.. unless entity @p[tag=Manholes_SUCCESS] run tag @p add Manholes_FAIL

# If PW correct
execute if entity @p[tag=Manholes_SUCCESS] run tag @p remove Manholes_WIP
execute if entity @p[tag=Manholes_SUCCESS] run tellraw @p ["",{"text":"[EXIST Security] ","color":"yellow"},{"text":"Passcode verified. ","color":"aqua"},{"text":"Manholes ","color":"yellow"},{"text":"are now ","color":"aqua"},{"text":"open.","color":"green"}]
execute if entity @p[tag=Manholes_SUCCESS] run setblock -1924 57 825 minecraft:stone_button[face=wall,facing=south]
execute if entity @p[tag=Manholes_SUCCESS] run setblock -1922 57 825 minecraft:stone_button[face=wall,facing=south]
execute if entity @p[tag=Manholes_SUCCESS] run setblock -1920 57 825 minecraft:stone_button[face=wall,facing=south]
execute if entity @p[tag=Manholes_SUCCESS] run data merge block -1921 56 800 {auto:0b}
execute if entity @p[tag=Manholes_SUCCESS] run data merge block -1924 56 800 {auto:0b}
execute if entity @p[tag=Manholes_SUCCESS] run tag @p add Manholes_ON
execute if entity @p[tag=Manholes_SUCCESS] run tag @p remove Manholes_SUCCESS

execute if entity @p[tag=Manholes_ON] run data merge block -1924 59 825 {Text4:'{"text":"ON","color":"green","bold":true}'}
execute if entity @p[tag=Manholes_ON] run setblock -1925 58 824 minecraft:lime_stained_glass
execute if entity @p[tag=Manholes_ON] run function main:configurations/open-manholes

# If PW is incorrect
execute if entity @p[tag=Manholes_FAIL] run tag @p remove Manholes_WIP
execute if entity @p[tag=Manholes_FAIL] run tellraw @p ["",{"text":"[EXIST Security] ","color":"yellow"},{"text":"Passcode incorrect. Press the button to try again.","color":"red"}]
execute if entity @p[tag=Manholes_FAIL] run setblock -1924 57 825 minecraft:stone_button[face=wall,facing=south]
execute if entity @p[tag=Manholes_FAIL] run setblock -1922 57 825 minecraft:stone_button[face=wall,facing=south]
execute if entity @p[tag=Manholes_FAIL] run setblock -1920 57 825 minecraft:stone_button[face=wall,facing=south]
execute if entity @p[tag=Manholes_FAIL] run data merge block -1921 56 800 {auto:0b}
execute if entity @p[tag=Manholes_FAIL] run tag @p remove Manholes_FAIL
