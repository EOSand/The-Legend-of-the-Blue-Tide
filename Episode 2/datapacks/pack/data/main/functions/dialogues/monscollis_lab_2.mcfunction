# Made by ESand
# Monscollis lab 2 dialogue
# Called after player picks up relics

# Remove comparator
setblock -1972 61 929 bricks

# Dialogue
tellraw @p ["",{"text":"DR. ANVAR >>>","color":"aqua","bold":true},{"text":" Ah, it is you. Please use the main exit behind you and head to the top floor, someone is awaiting your presence.","color":"gray"}]
execute at @e[name="Dr. Anvar"] run playsound minecraft:entity.villager.ambient ambient @p ~ ~ ~
execute at @e[name="Dr. Anvar"] run playsound minecraft:block.note_block.iron_xylophone block @p ~ ~ ~ 0.5 0.5
execute at @e[name="Dr. Anvar"] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.25 0.25 10 20