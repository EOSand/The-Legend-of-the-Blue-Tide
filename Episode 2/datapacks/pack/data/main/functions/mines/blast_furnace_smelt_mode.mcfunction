# Made by ThePrestigeMC
# Main function for blast furnace smelt mode operation

# Raw Iron -> Iron Ingot
# Cassiterite -> Tin Ingot
# Malachite -> Copper Ingot
# Native Gold -> Gold Ingot
# Native Silver -> Silver Ingot
# Native Platinum -> Platinum Ingot

# Count how many ore in the input hopper
execute if block -2027 76 750 minecraft:hopper{Items:[{id:"minecraft:raw_iron",Count:1b,tag:{display:{Name:'{"italic":false,"text":"Raw Iron"}'}}}]} run scoreboard players add @p BF_Hematite 1
execute if block -2027 76 750 minecraft:hopper{Items:[{id:"minecraft:raw_iron",Count:1b,tag:{display:{Name:'{"italic":false,"text":"Raw Iron"}'}}}]} run data merge block -2027 76 750 {Items:[]}

execute if block -2027 76 750 minecraft:hopper{Items:[{id:"minecraft:raw_iron",Count:1b,tag:{display:{Name:'{"italic":false,"text":"Raw Tin"}'}}}]} run scoreboard players add @p BF_Cassiterite 1
execute if block -2027 76 750 minecraft:hopper{Items:[{id:"minecraft:raw_iron",Count:1b,tag:{display:{Name:'{"italic":false,"text":"Raw Tin"}'}}}]} run data merge block -2027 76 750 {Items:[]}

execute if block -2027 76 750 minecraft:hopper{Items:[{id:"minecraft:raw_copper",Count:1b,tag:{display:{Name:'{"italic":false,"text":"Raw Copper"}'}}}]} run scoreboard players add @p BF_Malachite 1
execute if block -2027 76 750 minecraft:hopper{Items:[{id:"minecraft:raw_copper",Count:1b,tag:{display:{Name:'{"italic":false,"text":"Raw Copper"}'}}}]} run data merge block -2027 76 750 {Items:[]}

execute if block -2027 76 750 minecraft:hopper{Items:[{id:"minecraft:raw_gold",Count:1b,tag:{display:{Name:'{"italic":false,"text":"Raw Gold"}'}}}]} run scoreboard players add @p BF_Native_Gold 1
execute if block -2027 76 750 minecraft:hopper{Items:[{id:"minecraft:raw_gold",Count:1b,tag:{display:{Name:'{"italic":false,"text":"Raw Gold"}'}}}]} run data merge block -2027 76 750 {Items:[]}

execute if block -2027 76 750 minecraft:hopper{Items:[{id:"minecraft:raw_gold",Count:1b,tag:{display:{Name:'{"italic":false,"text":"Raw Silver"}'}}}]} run scoreboard players add @p BF_Native_Silver 1
execute if block -2027 76 750 minecraft:hopper{Items:[{id:"minecraft:raw_gold",Count:1b,tag:{display:{Name:'{"italic":false,"text":"Raw Silver"}'}}}]} run data merge block -2027 76 750 {Items:[]}

execute if block -2027 76 750 minecraft:hopper{Items:[{id:"minecraft:raw_gold",Count:1b,tag:{display:{Name:'{"italic":false,"text":"Raw Platinum"}'}}}]} run scoreboard players add @p BF_Native_Plat 1
execute if block -2027 76 750 minecraft:hopper{Items:[{id:"minecraft:raw_gold",Count:1b,tag:{display:{Name:'{"italic":false,"text":"Raw Platinum"}'}}}]} run data merge block -2027 76 750 {Items:[]}


# Start blast furnace operation
execute if score @p BF_Hematite matches 1 run fill -2043 79 769 -2043 78 769 minecraft:redstone_block
execute if score @p BF_Cassiterite matches 1 run fill -2043 79 769 -2043 78 769 minecraft:redstone_block
execute if score @p BF_Malachite matches 1 run fill -2043 79 769 -2043 78 769 minecraft:redstone_block
execute if score @p BF_Native_Gold matches 1 run fill -2043 79 769 -2043 78 769 minecraft:redstone_block
execute if score @p BF_Native_Silver matches 1 run fill -2043 79 769 -2043 78 769 minecraft:redstone_block
execute if score @p BF_Native_Plat matches 1 run fill -2043 79 769 -2043 78 769 minecraft:redstone_block


# Ouput ingot if player only put 1 in
execute if score @p BF_Hematite matches 1 if block -2026 76 750 minecraft:hopper{Items:[]} run data merge block -2028 76 747 {Items:[{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Iron Ingot","italic":false}'}}}]}
execute if score @p BF_Hematite matches 1 if block -2026 76 750 minecraft:hopper{Items:[]} run scoreboard players set @p BF_Hematite 0

execute if score @p BF_Cassiterite matches 1 if block -2026 76 750 minecraft:hopper{Items:[]} run data merge block -2028 76 747 {Items:[{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Tin Ingot","italic":false}'}}}]}
execute if score @p BF_Cassiterite matches 1 if block -2026 76 750 minecraft:hopper{Items:[]} run scoreboard players set @p BF_Cassiterite 0

execute if score @p BF_Malachite matches 1 if block -2026 76 750 minecraft:hopper{Items:[]} run data merge block -2028 76 747 {Items:[{id:"minecraft:copper_ingot",Count:1b,tag:{display:{Name:'{"text":"Copper Ingot","italic":false}'}}}]}
execute if score @p BF_Malachite matches 1 if block -2026 76 750 minecraft:hopper{Items:[]} run scoreboard players set @p BF_Malachite 0

execute if score @p BF_Native_Gold matches 1 if block -2026 76 750 minecraft:hopper{Items:[]} run data merge block -2028 76 747 {Items:[{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:'{"text":"Gold Ingot","italic":false}'}}}]}
execute if score @p BF_Native_Gold matches 1 if block -2026 76 750 minecraft:hopper{Items:[]} run scoreboard players set @p BF_Native_Gold 0

execute if score @p BF_Native_Silver matches 1 if block -2026 76 750 minecraft:hopper{Items:[]} run data merge block -2028 76 747 {Items:[{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Silver Ingot","italic":false}'}}}]}
execute if score @p BF_Native_Silver matches 1 if block -2026 76 750 minecraft:hopper{Items:[]} run scoreboard players set @p BF_Native_Silver 0

execute if score @p BF_Native_Plat matches 1 if block -2026 76 750 minecraft:hopper{Items:[]} run data merge block -2028 76 747 {Items:[{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Platinum Ingot","italic":false}'}}}]}
execute if score @p BF_Native_Plat matches 1 if block -2026 76 750 minecraft:hopper{Items:[]} run scoreboard players set @p BF_Native_Plat 0


# Output ingots if player put more than 1 in
execute if score @p BF_Hematite matches 2.. run data merge block -2028 76 747 {Items:[{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Iron Ingot","italic":false}'}}}]}
execute if score @p BF_Hematite matches 2.. run scoreboard players remove @p BF_Hematite 1

execute if score @p BF_Cassiterite matches 2.. run data merge block -2028 76 747 {Items:[{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Tin Ingot","italic":false}'}}}]}
execute if score @p BF_Cassiterite matches 2.. run scoreboard players remove @p BF_Cassiterite 1

execute if score @p BF_Malachite matches 2.. run data merge block -2028 76 747 {Items:[{id:"minecraft:copper_ingot",Count:1b,tag:{display:{Name:'{"text":"Copper Ingot","italic":false}'}}}]}
execute if score @p BF_Malachite matches 2.. run scoreboard players remove @p BF_Malachite 1

execute if score @p BF_Native_Gold matches 2.. run data merge block -2028 76 747 {Items:[{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:'{"text":"Gold Ingot","italic":false}'}}}]}
execute if score @p BF_Native_Gold matches 2.. run scoreboard players remove @p BF_Native_Gold 1

execute if score @p BF_Native_Silver matches 2.. run data merge block -2028 76 747 {Items:[{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Silver Ingot","italic":false}'}}}]}
execute if score @p BF_Native_Silver matches 2.. run scoreboard players remove @p BF_Native_Silver 1

execute if score @p BF_Native_Plat matches 2.. run data merge block -2028 76 747 {Items:[{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Platinum Ingot","italic":false}'}}}]}
execute if score @p BF_Native_Plat matches 2.. run scoreboard players remove @p BF_Native_Plat 1


# End blast furnace operation iff there is no ore in the first hopper
execute if score @p BF_Hematite matches 0 if block -2026 76 750 minecraft:hopper{Items:[]} run fill -2037 79 769 -2037 78 769 minecraft:redstone_block
execute if score @p BF_Cassiterite matches 0 if block -2026 76 750 minecraft:hopper{Items:[]} run fill -2037 79 769 -2037 78 769 minecraft:redstone_block
execute if score @p BF_Malachite matches 0 if block -2026 76 750 minecraft:hopper{Items:[]} run fill -2037 79 769 -2037 78 769 minecraft:redstone_block
execute if score @p BF_Native_Gold matches 0 if block -2026 76 750 minecraft:hopper{Items:[]} run fill -2037 79 769 -2037 78 769 minecraft:redstone_block
execute if score @p BF_Native_Silver matches 0 if block -2026 76 750 minecraft:hopper{Items:[]} run fill -2037 79 769 -2037 78 769 minecraft:redstone_block
execute if score @p BF_Native_Plat matches 0 if block -2026 76 750 minecraft:hopper{Items:[]} run fill -2037 79 769 -2037 78 769 minecraft:redstone_block
