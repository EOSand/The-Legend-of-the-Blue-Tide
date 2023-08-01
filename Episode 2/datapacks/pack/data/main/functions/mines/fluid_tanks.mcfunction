# Made by ThePrestigeMC
# Refills fluid tanks

execute if block -2035 85 764 minecraft:hopper{Items:[]} run item replace block -2035 85 764 container.0 with minecraft:water_bucket
execute if block -2043 85 764 minecraft:hopper{Items:[]} run item replace block -2043 85 764 container.0 with minecraft:lava_bucket
