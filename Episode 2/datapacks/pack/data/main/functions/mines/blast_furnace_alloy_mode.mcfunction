# Made by EOSand
# Main function for blast furnace alloy mode operation

# ALLOY				     PRIMARY		SECONDARY
# Steel 			     Iron			  Coke
# Bronze 			     Copper		  Tin
# Platinum Aurum	 Platinum 	Gold
# Electrum 			   Silver 		Gold

# Count how many ore in PRIMARY hopper
execute if block -2027 76 750 minecraft:hopper{Items:[{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Iron Ingot","italic":false}'}}}]} run scoreboard players add @p BF_Iron 1
execute if block -2027 76 750 minecraft:hopper{Items:[{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Iron Ingot","italic":false}'}}}]} run data merge block -2027 76 750 {Items:[]}

execute if block -2027 76 750 minecraft:hopper{Items:[{id:"minecraft:copper_ingot",Count:1b,tag:{display:{Name:'{"text":"Copper Ingot","italic":false}'}}}]} run scoreboard players add @p BF_Copper 1
execute if block -2027 76 750 minecraft:hopper{Items:[{id:"minecraft:copper_ingot",Count:1b,tag:{display:{Name:'{"text":"Copper Ingot","italic":false}'}}}]} run data merge block -2027 76 750 {Items:[]}

execute if block -2027 76 750 minecraft:hopper{Items:[{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Platinum Ingot","italic":false}'}}}]} run scoreboard players add @p BF_Platinum 1
execute if block -2027 76 750 minecraft:hopper{Items:[{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Platinum Ingot","italic":false}'}}}]} run data merge block -2027 76 750 {Items:[]}

execute if block -2027 76 750 minecraft:hopper{Items:[{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Silver Ingot","italic":false}'}}}]} run scoreboard players add @p BF_Silver 1
execute if block -2027 76 750 minecraft:hopper{Items:[{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Silver Ingot","italic":false}'}}}]} run data merge block -2027 76 750 {Items:[]}


# Count how many ore in SECONDARY hopper
execute if block -2027 76 744 minecraft:hopper{Items:[{id:"minecraft:coal",Count:1b,tag:{display:{Name:'{"text":"Coke","italic":false}'}}}]} run scoreboard players add @p BF_Coke 1
execute if block -2027 76 744 minecraft:hopper{Items:[{id:"minecraft:coal",Count:1b,tag:{display:{Name:'{"text":"Coke","italic":false}'}}}]} run data merge block -2027 76 744 {Items:[]}

execute if block -2027 76 744 minecraft:hopper{Items:[{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Tin Ingot","italic":false}'}}}]} run scoreboard players add @p BF_Tin 1
execute if block -2027 76 744 minecraft:hopper{Items:[{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Tin Ingot","italic":false}'}}}]} run data merge block -2027 76 744 {Items:[]}

execute if block -2027 76 744 minecraft:hopper{Items:[{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:'{"text":"Gold Ingot","italic":false}'}}}]} run scoreboard players add @p BF_Gold 1
execute if block -2027 76 744 minecraft:hopper{Items:[{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:'{"text":"Gold Ingot","italic":false}'}}}]} run data merge block -2027 76 744 {Items:[]}


# Count how many ALLOY to make from ores in both PRIMARY and SECONDARY hopper
execute if score @p BF_Iron matches 1.. if score @p BF_Coke matches 1.. run scoreboard players add @p BF_Steel 1
execute if score @p BF_Steel matches 1.. unless score @p BF_Iron matches 0 run scoreboard players remove @p BF_Iron 1
execute if score @p BF_Steel matches 1.. unless score @p BF_Coke matches 0 run scoreboard players remove @p BF_Coke 1

execute if score @p BF_Copper matches 1.. if score @p BF_Tin matches 1.. run scoreboard players add @p BF_Bronze 1
execute if score @p BF_Bronze matches 1.. unless score @p BF_Copper matches 0 run scoreboard players remove @p BF_Copper 1
execute if score @p BF_Bronze matches 1.. unless score @p BF_Tin matches 0 run scoreboard players remove @p BF_Tin 1

execute if score @p BF_Platinum matches 1.. if score @p BF_Gold matches 1.. run scoreboard players add @p BF_Plat_Aurum 1
execute if score @p BF_Plat_Aurum matches 1.. unless score @p BF_Platinum matches 0 run scoreboard players remove @p BF_Platinum 1
execute if score @p BF_Plat_Aurum matches 1.. unless score @p BF_Gold matches 0 run scoreboard players remove @p BF_Gold 1

execute if score @p BF_Silver matches 1.. if score @p BF_Gold matches 1.. run scoreboard players add @p BF_Electrum 1
execute if score @p BF_Electrum matches 1.. unless score @p BF_Silver matches 0 run scoreboard players remove @p BF_Silver 1
execute if score @p BF_Electrum matches 1.. unless score @p BF_Gold matches 0 run scoreboard players remove @p BF_Gold 1


# Start blast furnace operation
execute if score @p BF_Steel matches 1 run fill -2043 79 769 -2043 78 769 minecraft:redstone_block
execute if score @p BF_Bronze matches 1 run fill -2043 79 769 -2043 78 769 minecraft:redstone_block
execute if score @p BF_Plat_Aurum matches 1 run fill -2043 79 769 -2043 78 769 minecraft:redstone_block
execute if score @p BF_Electrum matches 1 run fill -2043 79 769 -2043 78 769 minecraft:redstone_block


# Output alloy
execute if score @p BF_Steel matches 1.. run data merge block -2028 76 747 {Items:[{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Steel Ingot","italic":false}'}}}]}
execute if score @p BF_Bronze matches 1.. run data merge block -2028 76 747 {Items:[{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Bronze Ingot","italic":false}'}}}]}
execute if score @p BF_Plat_Aurum matches 1.. run data merge block -2028 76 747 {Items:[{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Platinum Aurum Ingot","italic":false}'}}}]}
execute if score @p BF_Electrum matches 1.. run data merge block -2028 76 747 {Items:[{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Electrum Ingot","italic":false}'}}}]}


# Decrement scores
execute if score @p BF_Steel matches 1.. run scoreboard players remove @p BF_Steel 1
execute if score @p BF_Bronze matches 1.. run scoreboard players remove @p BF_Bronze 1
execute if score @p BF_Plat_Aurum matches 1.. run scoreboard players remove @p BF_Plat_Aurum 1
execute if score @p BF_Electrum matches 1.. run scoreboard players remove @p BF_Electrum 1


# End blast furnace operation if and only if there is no more ore in both hoppers
execute if score @p BF_Steel matches 0 if block -2026 76 750 minecraft:hopper{Items:[]} if block -2026 76 744 minecraft:hopper{Items:[]} run fill -2037 79 769 -2037 78 769 minecraft:redstone_block
execute if score @p BF_Bronze matches 0 if block -2026 76 750 minecraft:hopper{Items:[]} if block -2026 76 744 minecraft:hopper{Items:[]} run fill -2037 79 769 -2037 78 769 minecraft:redstone_block
execute if score @p BF_Plat_Aurum matches 0 if block -2026 76 750 minecraft:hopper{Items:[]} if block -2026 76 744 minecraft:hopper{Items:[]} run fill -2037 79 769 -2037 78 769 minecraft:redstone_block
execute if score @p BF_Electrum matches 0 if block -2026 76 750 minecraft:hopper{Items:[]} if block -2026 76 744 minecraft:hopper{Items:[]} run fill -2037 79 769 -2037 78 769 minecraft:redstone_block
