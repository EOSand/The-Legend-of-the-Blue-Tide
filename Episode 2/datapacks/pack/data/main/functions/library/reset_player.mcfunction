# Made by EOSand
# Resets player if falls

# Reset initial cmd block
data modify block -1765 62 816 auto set value 0
setblock -1765 62 815 minecraft:air

# Reset P if falls (before books)
execute at @p if block ~ ~-0.25 ~ minecraft:spruce_planks if entity @p[y=74.0,distance=..0.25] unless entity @p[tag=Library_CHECK1] unless entity @p[tag=Library_CHECK2] run playsound minecraft:entity.enderman.teleport ambient @p -1780.5 83.0 824.5
execute at @p if block ~ ~-0.25 ~ minecraft:spruce_planks if entity @p[y=74.0,distance=..0.25] unless entity @p[tag=Library_CHECK1] unless entity @p[tag=Library_CHECK2] run particle minecraft:witch -1780.5 83.0 824.5 2 0 2 0.01 100
execute at @p if block ~ ~-0.25 ~ minecraft:spruce_planks if entity @p[y=74.0,distance=..0.25] unless entity @p[tag=Library_CHECK1] unless entity @p[tag=Library_CHECK2] run tp @p -1780.5 83.0 821.5 180.0 0.0

# Checkpoint: books
execute if entity @p[x=-1764.5,y=79.0,z=814.5,distance=..1] run tag @p add Library_CHECK1
execute at @p if block ~ ~-0.25 ~ minecraft:spruce_planks if entity @p[y=74.0,distance=..0.25,tag=Library_CHECK1] unless entity @p[tag=Library_CHECK2] run playsound minecraft:entity.enderman.teleport ambient @p -1764.5 79.0 814.5
execute at @p if block ~ ~-0.25 ~ minecraft:spruce_planks if entity @p[y=74.0,distance=..0.25,tag=Library_CHECK1] unless entity @p[tag=Library_CHECK2] run particle minecraft:witch -1764.5 79.0 814.5 2 0 2 0.01 100
execute at @p if block ~ ~-0.25 ~ minecraft:spruce_planks if entity @p[y=74.0,distance=..0.25,tag=Library_CHECK1] unless entity @p[tag=Library_CHECK2] run tp @p -1764.5 79.0 814.5 -135 30

# Checkpoint: beams
execute if entity @p[x=-1766.5,y=86.0,z=799.5,distance=..1] run tag @p add Library_CHECK2
execute at @p if block ~ ~-0.25 ~ minecraft:spruce_planks if entity @p[y=74.0,distance=..0.25,tag=Library_CHECK2] run playsound minecraft:entity.enderman.teleport ambient @p -1766.5 86.0 799.5
execute at @p if block ~ ~-0.25 ~ minecraft:spruce_planks if entity @p[y=74.0,distance=..0.25,tag=Library_CHECK2] run particle minecraft:witch -1766.5 86.0 799.5 2 0 2 0.01 100
execute at @p if block ~ ~-0.25 ~ minecraft:spruce_planks if entity @p[y=74.0,distance=..0.25,tag=Library_CHECK2] run tp @p -1766.5 86.0 799.5 -30 30

# Regen
effect give @p minecraft:regeneration 1000000 0 true
effect give @p minecraft:saturation 1000000 0 true

# Reset everything if P has item
execute if entity @p[nbt={Inventory:[{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Name:'{"text":"Tome of Monscollis","color":"yellow","italic":false}'}}}]}] unless entity @p[tag=Library_DONE] run tag @p add Library_DONE
execute if entity @p[tag=Library_DONE] run function main:timer/increment
execute if entity @p[tag=Library_DONE] if score @p Timer matches 10 run tellraw @p {"text":"Sending back in 3..","color":"gray","italic":true}
execute if entity @p[tag=Library_DONE] if score @p Timer matches 30 run tellraw @p {"text":"2..","color":"gray","italic":true}
execute if entity @p[tag=Library_DONE] if score @p Timer matches 50 run tellraw @p {"text":"1..","color":"gray","italic":true}
execute if entity @p[tag=Library_DONE] if score @p Timer matches 70 run tp @p -1780.5 83.0 821.5 180.0 0.0
execute if entity @p[tag=Library_DONE] if score @p Timer matches 70 run playsound minecraft:entity.enderman.teleport ambient @p -1780.5 83.0 824.5
execute if entity @p[tag=Library_DONE] if score @p Timer matches 70 run particle minecraft:witch -1780.5 83.0 824.5 2 0 2 0.01 100
execute if entity @p[tag=Library_DONE] if score @p Timer matches 70 run function main:library/reset_library
execute if entity @p[tag=Library_DONE] if score @p Timer matches 70 run data modify block -1765 62 813 auto set value 0
execute if entity @p[tag=Library_DONE] if score @p Timer matches 70 run function main:timer/reset
