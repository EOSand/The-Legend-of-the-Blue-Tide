# Made by ESand
# Citadel lab 2 dialogue
# Called when player is in teleportation pod

# Dialogue
execute if score @p Timer matches 0 run tellraw @p ["",{"text":"DR. ADRIYAN >>>","color":"aqua","bold":true},{"text":" Perfect, now hold tight as it might get a little bumpy!","color":"gray"}]
execute if score @p Timer matches 0 run execute at @e[name="Dr. Adriyan"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 0 run execute at @e[name="Dr. Adriyan"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 0 run execute at @e[name="Dr. Adriyan"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Hold on! Who are you guys and what am I doing here?!","color":"gray"}]
execute if score @p Timer matches 60 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 120 run tellraw @p ["",{"text":"DR. FITZGERALD >>>","color":"aqua","bold":true},{"text":" There is no time to explain. Please go.","color":"gray"}]
execute if score @p Timer matches 120 run execute at @e[name="Dr. Fitzgerald"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 120 run execute at @e[name="Dr. Fitzgerald"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 120 run execute at @e[name="Dr. Fitzgerald"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 170 run tellraw @p ["",{"text":"DR. HUNT >>>","color":"aqua","bold":true},{"text":" Monscollis needs you.","color":"gray"}]
execute if score @p Timer matches 170 run execute at @e[name="Dr. Hunt"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 170 run execute at @e[name="Dr. Hunt"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 170 run execute at @e[name="Dr. Hunt"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 210 run tellraw @p ["",{"text":"DR. CODIX >>>","color":"aqua","bold":true},{"text":" The Blue Tide needs you.","color":"gray"}]
execute if score @p Timer matches 210 run execute at @e[name="Dr. Codix"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 210 run execute at @e[name="Dr. Codix"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 210 run execute at @e[name="Dr. Codix"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

# Teleport player to lab in Monscollis
execute if score @p Timer matches 250 run setblock -54 27 5 minecraft:redstone_block

########################################

function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 251 run data merge block -40 28 6 {auto:0b}

# Reset Timer
execute if score @p Timer matches 251 run function main:timer/reset


