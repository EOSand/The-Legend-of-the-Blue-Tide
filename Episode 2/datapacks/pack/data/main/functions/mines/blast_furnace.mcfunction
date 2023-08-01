# Made by ThePrestigeMC
# Main function for usage of the blast furnace

# Changes mode of blast furnace (alloy: 0, smelt: 1)
execute if score @p BF_Mode matches 0 run data merge block -2027 78 747 {Text4:'{"text":"ALLOY","bold":true,"color":"dark_gray"}'}
execute if score @p BF_Mode matches 1 run data merge block -2027 78 747 {Text4:'{"text":"SMELT","bold":true,"color":"dark_gray"}'}
execute if score @p BF_Mode matches 2 run scoreboard players set @p BF_Mode 0

# Run functions
execute if score @p BF_Mode matches 0 run function main:mines/blast_furnace_alloy_mode
execute if score @p BF_Mode matches 1 run function main:mines/blast_furnace_smelt_mode

# Prevent player from switching modes DURING operation



# Change notificiation signs for ALLOY and SMELT MODES
# ALLOY MODE
execute if score @p BF_Mode matches 0 run tag @p remove BF_SMELT

execute if score @p BF_Mode matches 0 unless entity @p[tag=BF_ALLOY] run particle minecraft:flame -2025.5 78.5 750.75 0.5 1 0 0.01 50
execute if score @p BF_Mode matches 0 unless entity @p[tag=BF_ALLOY] run particle minecraft:large_smoke -2025.5 78.5 750.75 0.5 1 0 0.01 20
execute if score @p BF_Mode matches 0 unless entity @p[tag=BF_ALLOY] run playsound minecraft:block.piston.contract block @p -2025.5 78.5 750.75 0.5

execute if score @p BF_Mode matches 0 unless entity @p[tag=BF_ALLOY] run particle minecraft:flame -2025.5 78.0 744.25 0.5 1 0 0.01 50
execute if score @p BF_Mode matches 0 unless entity @p[tag=BF_ALLOY] run particle minecraft:large_smoke -2025.5 78.0 744.25 0.5 1 0 0.01 20
execute if score @p BF_Mode matches 0 unless entity @p[tag=BF_ALLOY] run playsound minecraft:block.piston.contract block @p -2025.5 78.0 744.25 0.5

execute if score @p BF_Mode matches 0 unless entity @p[tag=BF_ALLOY] run tag @p add BF_ALLOY

# PRIMARY
execute if score @p BF_Mode matches 0 run data merge block -2026 76 750 {CustomName:'{"text":"Primary Input"}'}
execute if score @p BF_Mode matches 0 run setblock -2026 79 750 minecraft:air
execute if score @p BF_Mode matches 0 run data merge block -2026 78 750 {Text1:'{"text":""}',Text2:'{"text":"PRIMARY","color":"dark_gray","bold":true}',Text3:'{"text":"MATERIALS","color":"dark_gray","bold":true}',Text4:'{"text":""}'}
execute if score @p BF_Mode matches 0 run data merge block -2026 77 750 {Text1:'["",{"text":"Iron: ","color":"dark_gray"},{"score":{"name":"@p","objective":"BF_Iron"},"color":"gold"}]',Text2:'["",{"text":"Copper: ","color":"dark_gray"},{"score":{"name":"@p","objective":"BF_Copper"},"color":"gold"}]',Text3:'["",{"text":"Silver: ","color":"dark_gray"},{"score":{"name":"@p","objective":"BF_Silver"},"color":"gold"}]',Text4:'["",{"text":"Platinum: ","color":"dark_gray"},{"score":{"name":"@p","objective":"BF_Platinum"},"color":"gold"}]'}

# SECONDARY
execute if score @p BF_Mode matches 0 run fill -2026 78 744 -2026 77 744 minecraft:birch_wall_sign[facing=south]
execute if score @p BF_Mode matches 0 run data merge block -2026 78 744 {Text2:'{"text":"SECONDARY","color":"dark_gray","bold":true}',Text3:'{"text":"MATERIALS","color":"dark_gray","bold":true}'}
execute if score @p BF_Mode matches 0 run data merge block -2026 77 744 {Text1:'["",{"text":"Coke: ","color":"dark_gray"},{"score":{"name":"@p","objective":"BF_Coke"},"color":"gold"}]',Text2:'["",{"text":"Tin: ","color":"dark_gray"},{"score":{"name":"@p","objective":"BF_Tin"},"color":"gold"}]',Text3:'["",{"text":"Gold: ","color":"dark_gray"},{"score":{"name":"@p","objective":"BF_Gold"},"color":"gold"}]'}

###############

# SMELT MODE
execute if score @p BF_Mode matches 1 run tag @p remove BF_ALLOY

execute if score @p BF_Mode matches 1 unless entity @p[tag=BF_SMELT] run particle minecraft:flame -2025.5 78.5 750.75 0.5 1 0 0.01 50
execute if score @p BF_Mode matches 1 unless entity @p[tag=BF_SMELT] run particle minecraft:large_smoke -2025.5 78.5 750.75 0.5 1 0 0.01 20
execute if score @p BF_Mode matches 1 unless entity @p[tag=BF_SMELT] run playsound minecraft:block.piston.extend block @p -2025.5 78.5 750.75 0.5

execute if score @p BF_Mode matches 1 unless entity @p[tag=BF_SMELT] run particle minecraft:flame -2025.5 78.0 744.25 0.5 1 0 0.01 50
execute if score @p BF_Mode matches 1 unless entity @p[tag=BF_SMELT] run particle minecraft:large_smoke -2025.5 78.0 744.25 0.5 1 0 0.01 20
execute if score @p BF_Mode matches 1 unless entity @p[tag=BF_SMELT] run playsound minecraft:block.piston.extend block @p -2025.5 78.0 744.25 0.5

execute if score @p BF_Mode matches 1 unless entity @p[tag=BF_SMELT] run tag @p add BF_SMELT

# PRIMARY
execute if score @p BF_Mode matches 1 run data merge block -2026 76 750 {CustomName:'{"text":"Smelting Input"}'}
execute if score @p BF_Mode matches 1 run setblock -2026 79 750 minecraft:birch_wall_sign[facing=north]{Text1:'{"text":""}',Text2:'{"text":"SMELTING","color":"dark_gray","bold":true}',Text3:'{"text":"MATERIALS","color":"dark_gray","bold":true}',Text4:'{"text":""}'}
execute if score @p BF_Mode matches 1 run data merge block -2026 78 750 {Text1:'{"text":"IRON ORES","color":"dark_gray","bold":true}',Text2:'["",{"text":"R. Iron: ","color":"dark_gray"},{"score":{"name":"@p","objective":"BF_Hematite"},"color":"gold"}]',Text3:'["",{"text":"R. Copper: ","color":"dark_gray"},{"score":{"name":"@p","objective":"BF_Malachite"},"color":"gold"}]',Text4:'["",{"text":"R. Tin: ","color":"dark_gray"},{"score":{"name":"@p","objective":"BF_Cassiterite"},"color":"gold"}]'}
execute if score @p BF_Mode matches 1 run data merge block -2026 77 750 {Text1:'{"text":"GOLD ORES","color":"dark_gray","bold":true}',Text2:'["",{"text":"R. Gold: ","color":"dark_gray"},{"score":{"name":"@p","objective":"BF_Native_Gold"},"color":"gold"}]',Text3:'["",{"text":"R. Silver: ","color":"dark_gray"},{"score":{"name":"@p","objective":"BF_Native_Silver"},"color":"gold"}]',Text4:'["",{"text":"R. Platinum: ","color":"dark_gray"},{"score":{"name":"@p","objective":"BF_Native_Plat"},"color":"gold"}]'}

# SECONDARY (None)
execute if score @p BF_Mode matches 1 run setblock -2026 78 744 minecraft:air
execute if score @p BF_Mode matches 1 run setblock -2026 77 744 minecraft:iron_trapdoor
