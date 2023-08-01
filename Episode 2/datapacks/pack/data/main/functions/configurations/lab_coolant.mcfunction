# Made by ThePrestigeMC
# Function for Coolant (BluSci) configuration

# If player HAS enough (=> 64) coolant pipes in their inventory
execute if score @p Fluid_Pipes matches 64.. run tellraw @p ["",{"text":"[BluSci Labs] ","color":"blue"},{"text":"Success. The coolant pipe has been constructed.","color":"aqua"}]
execute if score @p Fluid_Pipes matches 64.. run tag @p add GenC_ON
execute if entity @p[tag=GenC_ON] run data merge block -1960 89 879 {Text4:'{"text":"ON","color":"green","bold":true}'}
execute if entity @p[tag=GenC_ON] run function main:configurations/coolant-pipe-construction
execute if entity @p[tag=GenC_ON] run data merge block -1961 81 917 {auto:0b}

# If player HAS NOT enough (< 64) coolant pipes in their inventory
execute unless score @p Fluid_Pipes matches 64.. run tellraw @p ["",{"text":"[BluSci Labs] ","color":"blue"},{"text":"Sorry, you need at least ","color":"red"},{"text":"64 Fluid Pipes ","color":"yellow"},{"text":"in your inventory to construct the coolant pipe. (You have ","color":"red"},{"score":{"name":"@p","objective":"Fluid_Pipes"},"color":"yellow"},{"text":")","color":"red"}]
