# Made by ThePrestigeMC
# Checks the keycard in the EXIST Coolant dropper

# INVALID: lvl < 5
execute if block -1919 58 824 minecraft:dropper{Items:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"Key Card - Level 1","italic":false}'}}}]} run tellraw @p ["",{"text":"[EXIST Security]","color":"yellow"},{"text":" Invalid keycard. Level 5 access required.","color":"red"}]
execute if block -1919 58 824 minecraft:dropper{Items:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"Key Card - Level 1","italic":false}'}}}]} run give @p minecraft:paper{display:{Name:'{"text":"Key Card - Level 1","italic":false}'}}
execute if block -1919 58 824 minecraft:dropper{Items:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"Key Card - Level 1","italic":false}'}}}]} run data merge block -1919 58 824 {Items:[]}
execute if block -1919 58 824 minecraft:dropper{Items:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"Key Card - Level 1","italic":false}'}}}]} run data merge block -1915 56 800 {auto:0b}


execute if block -1919 58 824 minecraft:dropper{Items:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"Key Card - Level 2","color":"yellow","italic":false}'}}}]} run tellraw @p ["",{"text":"[EXIST Security]","color":"yellow"},{"text":" Invalid keycard. Level 5 access required.","color":"red"}]
execute if block -1919 58 824 minecraft:dropper{Items:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"Key Card - Level 2","color":"yellow","italic":false}'}}}]} run give @p minecraft:paper{display:{Name:'{"text":"Key Card - Level 2","color":"yellow","italic":false}'}}
execute if block -1919 58 824 minecraft:dropper{Items:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"Key Card - Level 2","color":"yellow","italic":false}'}}}]} run data merge block -1919 58 824 {Items:[]}
execute if block -1919 58 824 minecraft:dropper{Items:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"Key Card - Level 2","color":"yellow","italic":false}'}}}]} run data merge block -1915 56 800 {auto:0b}


execute if block -1919 58 824 minecraft:dropper{Items:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"Key Card - Level 3","color":"red","italic":false}'}}}]} run tellraw @p ["",{"text":"[EXIST Security]","color":"yellow"},{"text":" Invalid keycard. Level 5 access required.","color":"red"}]
execute if block -1919 58 824 minecraft:dropper{Items:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"Key Card - Level 3","color":"red","italic":false}'}}}]} run give @p minecraft:paper{display:{Name:'{"text":"Key Card - Level 3","color":"red","italic":false}'}}
execute if block -1919 58 824 minecraft:dropper{Items:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"Key Card - Level 3","color":"red","italic":false}'}}}]} run data merge block -1919 58 824 {Items:[]}
execute if block -1919 58 824 minecraft:dropper{Items:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"Key Card - Level 3","color":"red","italic":false}'}}}]} run data merge block -1915 56 800 {auto:0b}


execute if block -1919 58 824 minecraft:dropper{Items:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"Key Card - Level 4","color":"aqua","italic":false}'}}}]} run tellraw @p ["",{"text":"[EXIST Security]","color":"yellow"},{"text":" Invalid keycard. Level 5 access required.","color":"red"}]
execute if block -1919 58 824 minecraft:dropper{Items:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"Key Card - Level 4","color":"aqua","italic":false}'}}}]} run give @p minecraft:paper{display:{Name:'{"text":"Key Card - Level 4","color":"aqua","italic":false}'}}
execute if block -1919 58 824 minecraft:dropper{Items:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"Key Card - Level 4","color":"aqua","italic":false}'}}}]} run data merge block -1919 58 824 {Items:[]}
execute if block -1919 58 824 minecraft:dropper{Items:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"Key Card - Level 4","color":"aqua","italic":false}'}}}]} run data merge block -1915 56 800 {auto:0b}


# VALID: lvl = 5
execute if block -1919 58 824 minecraft:dropper{Items:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"Key Card - Level 5","color":"light_purple","italic":false}'}}}]} run tellraw @p ["",{"text":"[EXIST Security]","color":"yellow"},{"text":" Access granted.","color":"aqua"}]
execute if block -1919 58 824 minecraft:dropper{Items:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"Key Card - Level 5","color":"light_purple","italic":false}'}}}]} run data merge block -1914 56 800 {auto:1b}
execute if block -1919 58 824 minecraft:dropper{Items:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"Key Card - Level 5","color":"light_purple","italic":false}'}}}]} run give @p minecraft:paper{display:{Name:'{"text":"Key Card - Level 5","color":"light_purple","italic":false}'}}
execute if block -1919 58 824 minecraft:dropper{Items:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"Key Card - Level 5","color":"light_purple","italic":false}'}}}]} run data merge block -1919 58 824 {Items:[]}
execute if block -1919 58 824 minecraft:dropper{Items:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"Key Card - Level 5","color":"light_purple","italic":false}'}}}]} run data merge block -1915 56 800 {auto:0b}
