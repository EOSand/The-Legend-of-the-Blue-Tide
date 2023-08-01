# Made by ThePrestigeMC
# Resets all configurations to OFF

tag @p remove Gen1_ON
tag @p remove Gen2_ON
tag @p remove Gen3_ON
tag @p remove GenC_ON

data merge block -1963 89 879 {Text4:'{"text":"OFF","color":"red","bold":true}'}
data merge block -1962 89 879 {Text4:'{"text":"OFF","color":"red","bold":true}'}
data merge block -1961 89 879 {Text4:'{"text":"OFF","color":"red","bold":true}'}
data merge block -1960 89 879 {Text4:'{"text":"OFF","color":"red","bold":true}'}

fill -1967 90 879 -1968 89 878 minecraft:netherrack
fill -1962 90 873 -1961 89 872 minecraft:netherrack
fill -1956 90 878 -1955 89 879 minecraft:netherrack