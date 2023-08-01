# Made by EOSand
# Second Dr. Mixer dialogue

# Remove comparator
execute if score @p Timer matches 0 if entity @p[tag=KC_4] run setblock -1847 90 772 minecraft:bricks

# If P return
execute if score @p Timer matches 0 if entity @p[tag=KC_4] run tellraw @p ["",{"text":"DR. MIXER ›››","color":"dark_aqua"},{"text":" Welcome back, are you all set to proceed with the experiment?","color":"gray"}]
execute if score @p Timer matches 0 if entity @p[tag=KC_4] run function main:dialogues/mixer/dr_mixer_fx

# Prompt P
execute if score @p Timer matches 0 if entity @p[tag=KC_4] run tellraw @p ["",{"text":"SELECT YOUR ANSWER:","color":"dark_gray","bold":true},{"text":"  [YES]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/fill -1847 93 771 -1847 92 771 minecraft:redstone_block"}},{"text":"  [NO]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @p [\"\",{\"text\":\"[Dr. Mixer] \",\"color\":\"dark_aqua\"},{\"text\":\"Of course. Please return when you are ready.\",\"color\":\"gray\"},{\"text\":\"\n- END OF DIALOGUE -\",\"color\":\"dark_gray\",\"bold\":true}]"}}]

########################################
# Increment
execute if entity @p[tag=KC_4] run function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 1 if entity @p[tag=KC_4] run data merge block -1847 90 775 {auto:0}

# Reset Timer
execute if score @p Timer matches 1 if entity @p[tag=KC_4] run function main:timer/reset
