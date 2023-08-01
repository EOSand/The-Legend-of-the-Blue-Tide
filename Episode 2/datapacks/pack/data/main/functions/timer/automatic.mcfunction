# Made by ESand
# Automatically increases timekeeping scoreboard; resets if necessary

function main:timer/increment

execute if score @p Timer matches 100000.. run function main:timer/reset
