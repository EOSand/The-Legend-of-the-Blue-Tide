# Made by EOSand
# First Vik Dialogue

# Remove comparator
execute if score @p Timer matches 0 run setblock -1953 83 917 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"VIK ›››","color":"green","bold":true},{"text":" Hello there! What can I do for you?","color":"gray"}]
execute if score @p Timer matches 0 run function main:dialogues/vik/vik_fx

execute if score @p Timer matches 60 run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Hey Vik, I'm currently just checking out the different places here in Monscollis, as I just traveled here.","color":"gray"}]
execute if score @p Timer matches 60 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 160 run tellraw @p ["",{"text":"VIK ›››","color":"green","bold":true},{"text":" Oh, right on! Well, beyond this commons is the residential and downtown area of the city. There, you'll find a few houses, the","color":"gray"},{"text":" Library and Archives","color":"aqua"},{"text":" and the","color":"gray"},{"text":" Museum of History","color":"aqua"},{"text":". You should definitely go check them out!","color":"gray"}]
execute if score @p Timer matches 160 run function main:dialogues/vik/vik_fx

execute if score @p Timer matches 420 run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Oh, absolutely! I really want to just spend some time to explore the city, just to get to know it a little better, you know?","color":"gray"}]
execute if score @p Timer matches 420 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 540 run tellraw @p ["",{"text":"VIK ›››","color":"green","bold":true},{"text":" Yeah, certainly! If you have any questions please feel free to ask me, too. I love to help out newcomers!","color":"gray"}]
execute if score @p Timer matches 540 run function main:dialogues/vik/vik_fx

execute if score @p Timer matches 640 run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Actually, I do have another question. When I arrived here, I heard something about security clearance key cards for","color":"gray"},{"text":" EXIST","color":"yellow"},{"text":" or something. Do you know anything about this?","color":"gray"}]
execute if score @p Timer matches 640 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 800 run tellraw @p ["",{"text":"VIK ›››","color":"green","bold":true},{"text":" Hmm... Well now that I think about it, I actually have heard some rumors and conspiracies around the subject. However they only apply if you have","color":"gray"},{"text":" level 3 clearance","color":"red"},{"text":", so please come back to me when you do!","color":"gray"}]
execute if score @p Timer matches 800 run function main:dialogues/vik/vik_fx

# If P doesn't have level 3 clearance
execute if score @p Timer matches 980 unless entity @p[tag=KC_3] run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" No worries, Vik. I'll be back soon.","color":"gray"}]
execute if score @p Timer matches 980 run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

# End of dialogue (only if P doesn't have level 3 clearance)
execute if score @p Timer matches 1040 unless entity @p[tag=KC_3] run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

# Turn on repeating cmd block to check for level 3 clearance
execute if score @p Timer matches 1040 run data merge block -1950 83 919 {auto:1}

########################################
# Increment
function main:timer/increment

# Turn off repeating command block (only if P doesn't have level 3 clearance)
execute if score @p Timer matches 1041 unless entity @p[tag=KC_3] run data merge block -1950 83 917 {auto:0}

# Change command for next dialogue
execute if score @p Timer matches 1041 if entity @p[tag=KC_3] run data merge block -1950 83 917 {Command:"function main:dialogues/vik/vik_level_3"}
execute if score @p Timer matches 1041 unless entity @p[tag=KC_3] run data merge block -1950 83 917 {Command:"function main:dialogues/vik/vik_reminder_1"}

# Turn on repeating command block for setting comparator (only if P doesn't have level 3 clearance)
execute if score @p Timer matches 1041 unless entity @p[tag=KC_3] run data merge block -1950 83 922 {auto:1}

# Delete barrier wall (only if P doesn't have level 3 clearance)
execute if score @p Timer matches 1041 unless entity @p[tag=KC_3] run function main:dialogues/vik/vik_wall_destroy

# Reset Timer
execute if score @p Timer matches 1041 run function main:timer/reset
