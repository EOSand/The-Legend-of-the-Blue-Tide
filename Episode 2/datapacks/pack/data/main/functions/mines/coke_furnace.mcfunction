# Made by ThePrestigeMC
# Main function for usage of the coke furnace

# Count how many coal in the input hopper w/ tags
execute if block -2012 78 750 minecraft:hopper{Items:[{id:"minecraft:coal",Count:1b}]} run scoreboard players add @p CF_Coal 1
execute if block -2012 78 750 minecraft:hopper{Items:[{id:"minecraft:coal",Count:1b}]} run data merge block -2012 78 750 {Items:[]}

# Start coke furnace operation
execute if score @p CF_Coal matches 1 run fill -2043 79 767 -2043 78 767 minecraft:redstone_block

# Output coke if player only put 1 coal in
execute if score @p CF_Coal matches 1 if block -2013 78 750 minecraft:hopper{Items:[]} run data merge block -2012 78 752 {Items:[{id:"minecraft:coal",Count:1b,tag:{display:{Name:'{"text":"Coke","italic":false}'}}}]}
execute if score @p CF_Coal matches 1 if block -2013 78 750 minecraft:hopper{Items:[]} run scoreboard players set @p CF_Coal 0

# Output coke if player put more than 1 in
execute if score @p CF_Coal matches 2.. run data merge block -2012 78 752 {Items:[{id:"minecraft:coal",Count:1b,tag:{display:{Name:'{"text":"Coke","italic":false}'}}}]}
execute if score @p CF_Coal matches 2.. run scoreboard players remove @p CF_Coal 1

# End coke furnace operation if and only if there is no more coal in hopper
execute if score @p CF_Coal matches 0 if block -2013 78 750 minecraft:hopper{Items:[]} run setblock -2037 78 767 minecraft:redstone_block