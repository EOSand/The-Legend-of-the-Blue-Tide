# Made by EOSand
# Main function for dealing with time delays in small command block functions

tag @e[type=minecraft:area_effect_cloud,nbt={Age:-1}] add nTicksLaterDone
execute at @e[tag=nTicksLaterDone] positioned ~ ~ ~ run data merge block ~ ~ ~ {auto:1}
execute at @e[tag=nTicksLaterDone] positioned ~ ~ ~ run data merge block ~ ~ ~ {auto:0}
