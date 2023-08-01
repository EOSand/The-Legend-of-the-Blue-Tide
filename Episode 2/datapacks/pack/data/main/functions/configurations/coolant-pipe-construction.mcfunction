# Made by ThePrestigeMC
# Constructs the coolant pipe

# Build
fill -1968 93 883 -1968 90 883 minecraft:packed_ice
fill -1968 93 872 -1968 93 883 minecraft:packed_ice
fill -1968 93 872 -1955 93 872 minecraft:packed_ice
fill -1955 93 872 -1955 93 880 minecraft:packed_ice
fill -1955 93 880 -1950 93 880 minecraft:packed_ice
fill -1950 93 880 -1950 90 880 minecraft:packed_ice
fill -1954 89 891 -1943 89 891 minecraft:packed_ice
fill -1943 89 891 -1943 89 899 minecraft:packed_ice

# Particles
particle minecraft:poof -1967.5 92.0 883.5 0.5 2 0.5 0.05 30
particle minecraft:poof -1967.5 93.5 878.0 0.5 0.5 3 0.05 60
particle minecraft:poof -1961.0 93.5 872.5 3.5 0.5 0.5 0.05 60
particle minecraft:poof -1954.5 93.5 876.5 0.5 0.5 2.25 0.05 30
particle minecraft:poof -1952.0 93.5 880.5 1.5 0.5 0.5 0.05 20
particle minecraft:poof -1949.5 92.0 880.5 0.5 2 0.5 0.05 20
particle minecraft:poof -1942.5 89.5 895.5 0.5 0.5 2.25 0.05 30
particle minecraft:poof -1947.0 90.0 891.5 3 0.5 0.5 0.05 30

# Sounds
playsound minecraft:block.anvil.use block @p ~ ~ ~

# Clear from inventory
clear @p minecraft:packed_ice 64
