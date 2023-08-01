# Made by EOSand
# Beginning dialogue
# Called when player starts the map

# Dialogue
execute if score @p Timer matches 0 run tellraw @p {"text":"GOOD MORNING, ASSISTANT. WOULD YOU MIND READING OFF THE SCHEDULE FOR THIS AFTERNOON?","italic":true,"color":"gray"}
execute if score @p Timer matches 88 run tellraw @p {"text":"\nOF COURSE. YOU HAVE A 10:00 DEBRIEF WITH THE NUCLEAR DIVISION,","italic":true,"color":"gray"}
execute if score @p Timer matches 144 run tellraw @p {"text":"A 12:00 LUNCH MEETING WITH THE CULINARY DIVISION REGARDING THE LACK OF DIETARY VARIETY IN THE PAST WEEK'S FOOD SUPPLY,","italic":true,"color":"gray"}
execute if score @p Timer matches 232 run tellraw @p {"text":"AND,","italic":true,"color":"gray"}
execute if score @p Timer matches 256 run tellraw @p {"text":"OH!","italic":true,"color":"gray"}
execute if score @p Timer matches 272 run tellraw @p {"text":"THE CEO AND THE PRIME COUNCIL HAVE SOMETHING LABELED 'CRITICAL' SCHEDULED AT 15:00.","italic":true,"color":"gray"}
execute if score @p Timer matches 336 run tellraw @p {"text":"\n'CRITICAL', YOU SAY?","italic":true,"color":"gray"}
execute if score @p Timer matches 376 run tellraw @p {"text":"THE COUNCIL NEVER LABELS ANYTHING 'CRITICAL' UNLESS THEY'RE TAKING SOMETHING TO EXTREME MEASURES OR SOMETHING LIKE THAT.","italic":true,"color":"gray"}
execute if score @p Timer matches 472 run tellraw @p {"text":"\nI DON'T KNOW, SIR...","italic":true,"color":"gray"}
execute if score @p Timer matches 512 run tellraw @p {"text":"I JUST HOPE IT'S SOMETHING THAT WILL CHANGE THE WORLD,","italic":true,"color":"gray"}
execute if score @p Timer matches 568 run tellraw @p {"text":"FOR THE BETTER, OF COURSE.","italic":true,"color":"gray"}
execute if score @p Timer matches 616 run tellraw @p {"text":"\nLET'S AIM FOR IT.","italic":true,"color":"gray"}
execute if score @p Timer matches 656 run tellraw @p {"text":"I MEAN, THEY CAN DO ANYTHING,","italic":true,"color":"gray"}
execute if score @p Timer matches 712 run tellraw @p {"text":"ANYTHING, I'LL TELL YA!","italic":true,"color":"gray"}
execute if score @p Timer matches 752 run tellraw @p {"text":"\nYOU'RE RIGHT, SIR.","italic":true,"color":"gray"}
execute if score @p Timer matches 784 run tellraw @p {"text":"AFTER ALL,","italic":true,"color":"gray"}
execute if score @p Timer matches 816 run tellraw @p ["",{"text":"THEY ARE ","italic":true,"color":"gray"},{"text":"EXIST","bold":true},{"text":"...","italic":true,"color":"gray"}]

execute if score @p Timer matches 856 run setblock -36 27 -64 minecraft:redstone_block

########################################

function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 857 run data merge block -40 27 -56 {auto:0b}

# Reset Timer
execute if score @p Timer matches 857 run function main:timer/reset