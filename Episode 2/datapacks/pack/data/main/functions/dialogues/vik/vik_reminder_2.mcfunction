# Made by EOSand
# Vik dialogue to remind P of quest items

# Remove comparator
execute if score @p Timer matches 0 run setblock -1953 83 917 minecraft:bricks

execute if score @p Timer matches 0 run tellraw @p ["",{"text":"VIK ›››","color":"green","bold":true},{"text":" You're still missing some gems! Remember,","color":"gray"},{"text":" 1 Redstone","color":"aqua"},{"text":",","color":"gray"},{"text":" 1 Lapis Lazuli","color":"aqua"},{"text":",","color":"gray"},{"text":" 1 Diamond","color":"aqua"},{"text":",","color":"gray"},{"text":" 1 Emerald","color":"aqua"},{"text":",","color":"gray"},{"text":" 1 Quartz","color":"aqua"},{"text":", and","color":"gray"},{"text":" 1 Amethyst Shard","color":"aqua"},{"text":"!","color":"gray"}]
execute if score @p Timer matches 0 run function main:dialogues/vik/vik_fx

execute if score @p Timer matches 120 run tellraw @p {"text":"- END OF DIALOGUE -","color":"dark_gray","bold":true}

########################################
# Increment
function main:timer/increment

# Turn off repeating command block
execute if score @p Timer matches 121 run data merge block -1950 83 917 {auto:0}

# Turn on repeating command block for setting comparator
execute if score @p Timer matches 121 run data merge block -1950 83 922 {auto:1}

# Delete barrier wall
execute if score @p Timer matches 121 run function main:dialogues/vik/vik_wall_destroy

# Reset Timer
execute if score @p Timer matches 121 run function main:timer/reset
