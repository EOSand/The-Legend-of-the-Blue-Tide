# Made by EOSand
# First Dr. Mixer dialogue

# Remove comparator
execute if score @p Timer matches 0 if entity @p[tag=KC_4] run setblock -1847 90 772 minecraft:bricks

# If P first time talking
execute if score @p Timer matches 0 if entity @p[tag=KC_4] run tellraw @p ["",{"text":"DR. MIXER ›››","color":"dark_aqua"},{"text":" I'm sorry, but unauthorized personnel are prohibited from entering this level.","color":"gray"}]
execute if score @p Timer matches 0 if entity @p[tag=KC_4] run function main:dialogues/mixer/dr_mixer_fx

execute if score @p Timer matches 80 if entity @p[tag=KC_4] run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" With all do respect, I have level 4 clearance, as you can see here.","color":"gray"}]
execute if score @p Timer matches 80 if entity @p[tag=KC_4] run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 120 if entity @p[tag=KC_4] run execute as @p run me shows Dr. Mixer a level 4 key card

execute if score @p Timer matches 140 if entity @p[tag=KC_4] run tellraw @p ["",{"text":"DR. MIXER ›››","color":"dark_aqua"},{"text":" Oh, of course! You must be the test subject from","color":"gray"},{"text":" BluSci","color":"blue"},{"text":" to aid in our research then!","color":"gray"}]
execute if score @p Timer matches 140 if entity @p[tag=KC_4] run function main:dialogues/mixer/dr_mixer_fx

execute if score @p Timer matches 220 if entity @p[tag=KC_4] run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Yes, Dr. Bright from BluSci sent me over to assist with... umm... an experiment... of some sorts...?","color":"gray"}]
execute if score @p Timer matches 220 if entity @p[tag=KC_4] run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 320 if entity @p[tag=KC_4] run tellraw @p ["",{"text":"DR. MIXER ›››","color":"dark_aqua"},{"text":" Ah, they must've kept it classified. No worries, we can explain everything right here. You are aware of the","color":"gray"},{"text":" Limbo","color":"dark_red"},{"text":", correct?","color":"gray"}]
execute if score @p Timer matches 320 if entity @p[tag=KC_4] run function main:dialogues/mixer/dr_mixer_fx

execute if score @p Timer matches 440 if entity @p[tag=KC_4] run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Yeah, I'm aware of what it was.","color":"gray"}]
execute if score @p Timer matches 440 if entity @p[tag=KC_4] run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 480 if entity @p[tag=KC_4] run tellraw @p ["",{"text":"DR. MIXER ›››","color":"dark_aqua"},{"text":" Awesome. Our research is centralized on one specific mutation of the catastrophe. The mutation manifested itself into a large, sentient being, that of which has the likes that we have never seen before.","color":"gray"}]
execute if score @p Timer matches 480 if entity @p[tag=KC_4] run function main:dialogues/mixer/dr_mixer_fx

execute if score @p Timer matches 680 if entity @p[tag=KC_4] run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" How intriguing. So, your research focuses on understanding this beast, you could say?","color":"gray"}]
execute if score @p Timer matches 680 if entity @p[tag=KC_4] run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 760 if entity @p[tag=KC_4] run tellraw @p ["",{"text":"DR. MIXER ›››","color":"dark_aqua"},{"text":" Precisely. We are going to summon the mutation inside the chamber to your right and perform many tests to comprehend the being to the best of our ability. The only issue is that the beast maintains a very, let's just say aggresive, behavior, so maintaining it is no easy task.","color":"gray"}]
execute if score @p Timer matches 760 if entity @p[tag=KC_4] run function main:dialogues/mixer/dr_mixer_fx

execute if score @p Timer matches 1040 if entity @p[tag=KC_4] run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" So, where do I come into play?","color":"gray"}]
execute if score @p Timer matches 1040 if entity @p[tag=KC_4] run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 1080 if entity @p[tag=KC_4] run tellraw @p ["",{"text":"DR. MIXER ›››","color":"dark_aqua"},{"text":" You, my friend, will be required to fend off the monster so that we can perform our tests. Our tests will all be virtual and more or less instantaneous, so don't feel worried that you need to keep it alive for an incredible amount of time.","color":"gray"}]
execute if score @p Timer matches 1080 if entity @p[tag=KC_4] run function main:dialogues/mixer/dr_mixer_fx

execute if score @p Timer matches 1280 if entity @p[tag=KC_4] run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" So, since your tests will be essentially instant, I am able to merely slay the beast? And, besides, how hard can slaying it exactly be?","color":"gray"}]
execute if score @p Timer matches 1280 if entity @p[tag=KC_4] run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

execute if score @p Timer matches 1440 if entity @p[tag=KC_4] run tellraw @p ["",{"text":"DR. MIXER ›››","color":"dark_aqua"},{"text":" Basically, yes. The biggest aspect of this mission that I would advise is that you equip yourself with the utmost protection and weaponry. Unfortunately, we do not have any excess material for you to use. However, I am sure the","color":"gray"},{"text":" Monscollis Marketplace","color":"aqua"},{"text":" has armor, blades, and crossbows to your liking. Once you believe you are fully equipped and ready, please return to start the process.","color":"gray"}]
execute if score @p Timer matches 1440 if entity @p[tag=KC_4] run function main:dialogues/mixer/dr_mixer_fx

execute if score @p Timer matches 1800 if entity @p[tag=KC_4] run execute as @p run tellraw @p ["",{"text":"","extra":[{"selector":"@p"},{"text":" ›››"}],"color":"yellow","bold":true},{"text":" Alright, sounds good, Dr. Mixer!","color":"gray"}]
execute if score @p Timer matches 1800 if entity @p[tag=KC_4] run execute at @p run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~

# End of dialogue
execute if score @p Timer matches 1840 unless entity @p[tag=KC_4] run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 1840 if entity @p[tag=KC_4] run data modify block -1919 56 796 auto set value 1

########################################
# Increment
execute if entity @p[tag=KC_4] run function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 1841 if entity @p[tag=KC_4] run data merge block -1847 90 775 {auto:0}

# Change command for next dialogue
execute if score @p Timer matches 1841 if entity @p[tag=KC_4] run data modify block -1847 90 775 Command set value "function main:dialogues/mixer/dr_mixer_2"

# Delete barrier wall
execute if score @p Timer matches 1841 unless entity @p[tag=KC_4] run function main:dialogues/mixer/dr_mixer_wall_destroy

# Reset Timer
execute if score @p Timer matches 1841 if entity @p[tag=KC_4] run function main:timer/reset