# Made by ESand
# Citadel lab dialogue
# Called from gold pressure plate

# Dialogue
execute if score @p Timer matches 0 run tellraw @p ["",{"text":"DR. CODIX >>>","color":"aqua","bold":true},{"text":" Well, well, well! Look who finally made an appearance!","color":"gray"}]
execute if score @p Timer matches 0 run execute at @e[name="Dr. Codix"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 0 run execute at @e[name="Dr. Codix"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 0 run execute at @e[name="Dr. Codix"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 60 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" I'm sorry? Come again?","color":"gray"}]
execute if score @p Timer matches 60 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 100 run tellraw @p ["",{"text":"DR. FITZGERALD >>>","color":"aqua","bold":true},{"text":" Welcome, traveller. We have been expecting you for quite some time now.","color":"gray"}]
execute if score @p Timer matches 100 run execute at @e[name="Dr. Fitzgerald"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 100 run execute at @e[name="Dr. Fitzgerald"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 100 run execute at @e[name="Dr. Fitzgerald"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 160 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Again, I'm very confused as to what's going on right now...","color":"gray"}]
execute if score @p Timer matches 160 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 220 run tellraw @p ["",{"text":"DR. ADRIYAN >>>","color":"aqua","bold":true},{"text":" No worries, and we apologize for whatever emotions you may be having this very moment.","color":"gray"}]
execute if score @p Timer matches 220 run execute at @e[name="Dr. Adriyan"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 220 run execute at @e[name="Dr. Adriyan"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 220 run execute at @e[name="Dr. Adriyan"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 280 run tellraw @p ["",{"text":"DR. ADRIYAN >>>","color":"aqua","bold":true},{"text":" Please take a minute to describe the last thing you remember before you arrived here.","color":"gray"}]
execute if score @p Timer matches 280 run execute at @e[name="Dr. Adriyan"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 280 run execute at @e[name="Dr. Adriyan"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 280 run execute at @e[name="Dr. Adriyan"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 360 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Well, I lived peacefully on my home island with friend Joe down the way. So many cattle, sheep, poultry, you name it!","color":"gray"}]
execute if score @p Timer matches 360 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 440 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" It was a life of tranquility and friendship as Joe and I did everything together.","color":"gray"}]
execute if score @p Timer matches 440 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 500 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" But, with time comes change and, so, I built a small ship and gave my farewells to see where life takes me.","color":"gray"}]
execute if score @p Timer matches 500 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 580 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" I landed in a small town called 'Myrefall' or something and, one thing led to another, here I am!","color":"gray"}]
execute if score @p Timer matches 580 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 650 run tellraw @p ["",{"text":"DR. FITZGERALD >>>","color":"aqua","bold":true},{"text":" Interesting, please describe what you mean by \"one thing led to another\". Briefly, of course.","color":"gray"}]
execute if score @p Timer matches 650 run execute at @e[name="Dr. Fitzgerald"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 650 run execute at @e[name="Dr. Fitzgerald"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 650 run execute at @e[name="Dr. Fitzgerald"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 710 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Certainly! When I arrived at the village the townspeople said that there was this mysterious building that, legend had it, required 4 ancient relics to open.","color":"gray"}]
execute if score @p Timer matches 710 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 810 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" So, I went on a quest to find the items through a series of puzzles, mineshafts, ruins with parkour, and a riddle.","color":"gray"}]
execute if score @p Timer matches 810 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 890 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Like I said, one thing led to another and here I am!","color":"gray"}]
execute if score @p Timer matches 890 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 950 run tellraw @p ["",{"text":"DR. CODIX >>>","color":"aqua","bold":true},{"text":" Alright, perfect. Just what we were looking for.","color":"gray"}]
execute if score @p Timer matches 950 run execute at @e[name="Dr. Codix"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 950 run execute at @e[name="Dr. Codix"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 950 run execute at @e[name="Dr. Codix"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

execute if score @p Timer matches 1010 run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Um... Excuse me?","color":"gray"}]
execute if score @p Timer matches 1010 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 1050 run tellraw @p ["",{"text":"DR. CODIX >>>","color":"aqua","bold":true},{"text":" Now would you mind doing one last thing for us? Please step into the chamber behind you.","color":"gray"}]
execute if score @p Timer matches 1050 run execute at @e[name="Dr. Codix"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute if score @p Timer matches 1050 run execute at @e[name="Dr. Codix"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute if score @p Timer matches 1050 run execute at @e[name="Dr. Codix"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20

# Open teleportation pod
execute if score @p Timer matches 1070 run fill -54 27 -4 -54 29 -4 minecraft:redstone_block

########################################

function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 1071 run data merge block -40 28 8 {auto:0b}

# Reset Timer
execute if score @p Timer matches 1071 run function main:timer/reset


