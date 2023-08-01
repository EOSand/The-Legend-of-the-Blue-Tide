# Made by EOSand
# Monscollis lab 3 dialogue for failed mission teleportation

# Replace gold
execute if score @p Timer matches 0 run setblock -1987 59 928 minecraft:iron_block
execute if score @p Timer matches 0 run setblock -1987 60 928 minecraft:air

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"DR. ANVAR >>>","color":"aqua","bold":true},{"text":" Welcome back, ","color":"aqua","extra":[{"selector":"@p"},{"text":". Dr. Bright just sent us a message that you will be headed to the site of the failed mission, are you not?"}]}]
execute if score @p Timer matches 0 run execute at @e[name="Dr. Anvar"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 0 run execute at @e[name="Dr. Anvar"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 0 run execute at @e[name="Dr. Anvar"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 120 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Nope, that's correct. I will be heading there to salvage the shuttle in order to overlock the super computer.","color":"gray"}]
execute if score @p Timer matches 120 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 220 run tellraw @p ["",{"text":"DR. ANVAR >>>","color":"aqua","bold":true},{"text":" Brilliant, we have the coordinates loaded into the pod, so please step inside so we can begin the teleportation process. Make sure that you have brought everything with you because, once you step inside, you will be automatically transported.","color":"aqua"}]
execute if score @p Timer matches 220 run execute at @e[name="Dr. Anvar"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 220 run execute at @e[name="Dr. Anvar"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 220 run execute at @e[name="Dr. Anvar"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 460 run tellraw @p ["",{"text":"DR. PERCIVAL >>>","color":"aqua","bold":true},{"text":" Also, if you need to run back into the city to grab something, be it food, armor, weapons, etc., please feel free to return at any time. Just know that once you step foot in the pod, there's no going back.","color":"aqua"}]
execute if score @p Timer matches 460 run execute at @e[name="Dr. Percival"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 460 run execute at @e[name="Dr. Percival"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 460 run execute at @e[name="Dr. Percival"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 560 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Okay, thanks for letting me know and will do.","color":"gray"}]
execute if score @p Timer matches 560 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

# Enable teleportation
execute if score @p Timer matches 560 run data merge block -1966 63 938 {auto:1}

########################################

function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 561 run data merge block -1969 61 938 {auto:0}

# Reset Timer
execute if score @p Timer matches 561 run function main:timer/reset


