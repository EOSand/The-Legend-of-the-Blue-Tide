# Made by ESand
# Monscollis lab dialogue

# Remove comparator
execute if score @p Timer matches 0 run setblock -1974 61 929 minecraft:bricks

# Dialogue
execute if score @p Timer matches 0 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Wait... You're not... What happened?!","color":"gray"}]
execute if score @p Timer matches 0 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 50 run tellraw @p ["",{"text":"DR. UNWIN ›››","color":"aqua","bold":true},{"text":" Ah, you have much to learn and recall, I see.","color":"gray"}]
execute if score @p Timer matches 50 run execute at @e[name="Dr. Unwin"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 50 run execute at @e[name="Dr. Unwin"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 50 run execute at @e[name="Dr. Unwin"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 110 run tellraw @p ["",{"text":"DR. PERCIVAL ›››","color":"aqua","bold":true},{"text":" Yes, Dr. Unwin is correct. You just underwent a transportation sequence to our lab.","color":"gray"}]
execute if score @p Timer matches 110 run execute at @e[name="Dr. Percival"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 110 run execute at @e[name="Dr. Percival"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 110 run execute at @e[name="Dr. Percival"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 220 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" If that's true, why is this lab the same exact lab I was in a moment ago???","color":"gray"}]
execute if score @p Timer matches 220 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 330 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" The only thing I can notice is that you are different from the scientists in the original lab. Someone explain, please!!!","color":"gray"}]
execute if score @p Timer matches 330 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 440 run tellraw @p ["",{"text":"DR. PRIME ›››","color":"aqua","bold":true},{"text":" Calm down, traveller. To reiterate what Dr. Percival said, all we can tell you is that you were transported from that laboratory to this one.","color":"gray"}]
execute if score @p Timer matches 440 run execute at @e[name="Dr. Prime"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 440 run execute at @e[name="Dr. Prime"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 440 run execute at @e[name="Dr. Prime"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 600 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" But that doesn't even make any sense! I am so confused right now! Someone please give me answers!!!","color":"gray"}]
execute if score @p Timer matches 600 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 690 run tellraw @p ["",{"text":"DR. ANVAR ›››","color":"aqua","bold":true},{"text":" You will have them with time. We just need you to verify your identity with us so you can proceed on your journey.","color":"gray"}]
execute if score @p Timer matches 690 run execute at @e[name="Dr. Anvar"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 690 run execute at @e[name="Dr. Anvar"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 690 run execute at @e[name="Dr. Anvar"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 800 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Ok... How am I supposed to do that now?","color":"gray"}]
execute if score @p Timer matches 800 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 850 run tellraw @p ["",{"text":"DR. PERCIVAL ›››","color":"aqua","bold":true},{"text":" Our transportation system not only teleports humans, but also items.","color":"gray"}]
execute if score @p Timer matches 850 run execute at @e[name="Dr. Percival"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 850 run execute at @e[name="Dr. Percival"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 850 run execute at @e[name="Dr. Percival"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 920 run tellraw @p ["",{"text":"DR. PRIME ›››","color":"aqua","bold":true},{"text":" If you truly followed the quest laid out for you, you should've found four relics to open the Citadel.","color":"gray"}]
execute if score @p Timer matches 920 run execute at @e[name="Dr. Prime"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 920 run execute at @e[name="Dr. Prime"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 920 run execute at @e[name="Dr. Prime"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 1010 run tellraw @p ["",{"text":"DR. ANVAR ›››","color":"aqua","bold":true},{"text":" Hence, the four items should be dispensed onto the transport pod for your retrieval. Please fetch them.","color":"gray"}]
execute if score @p Timer matches 1010 run execute at @e[name="Dr. Anvar"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 1010 run execute at @e[name="Dr. Anvar"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 1010 run execute at @e[name="Dr. Anvar"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

# Summon relics
execute if score @p Timer matches 1010 run setblock -1970 61 928 minecraft:redstone_block

########################################

function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 1011 run data merge block -1974 61 932 {auto:0b}

# Reset Timer
execute if score @p Timer matches 1011 run function main:timer/reset