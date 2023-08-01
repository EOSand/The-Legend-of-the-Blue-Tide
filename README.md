# The Legend of the Blue Tide
The Legend of the Blue Tide is a large Minecraft adventure map series aimed at immersing the player in a story-driven, perplexing campaign while emphasizing self-guided discovery.

# Epsiode 2

# Data
The `data` folder consists of all maps that are used as blackboards, displays, and other visual aspects. We have edited various images and imported them into Minecraft with the .dat file format so they are displayed correctly. Also, we have used the Map to PNG program to convert an in-game map of the world to a PNG file to edit with software, providing a detailed and labeled map of the world. 

# Datapacks
The `datapacks` folder contains the Minecraft function scripting used in the datapack for the world. The most important of these scripts is in the `functions` subfolder, as detailed below.

# Configurations
The `configurations` folder contains functions related to in-game machines, such as power generators, gates, and manholes. Most notably, the `keypad-alphabet` and `keypad-num` functions create functional alphabet and numeric keypads in the chat window that the player can click, recording the key that was clicked. This is used in configurations that require passwords and/or passcodes.

# Dialogues
The `dialogues` folder contains all dialogues. Separated by character, the dialogues use an in-game tick clock to time messages and effects swiftly, providing an immersive player experience. Some of the dialogues require the player to perform specific tasks, while others are more standard.

# General
The `general` folder contains miscellaneous or general functions. For example, `map_viewer` allows the player to hold a named item which will bring them to a map of the world, and they will return upon not holding the item. 

# Keycards
The `keycards` folder contains functions for keycard scanners depending on the keycard the player currently has. For example, it will check if the level of a keycard matches the clearance required to enter an area, and will prevent the player form entering if the levels mismatch.

# Library
The `library` folder contains functions for automating the parkour in the library. This includes spawning features, timing clocks and redstone, and reverting the parkour upon completion.

# Limbo Mission
The `limbo_mission` folder contains two functions related to the limbo mission: one for inflicting damage on the player unless wearing the hazmat suit, and the other for generating particle effects throughout the world.

# Mines
The `mines` folder contains functions for the working blast furnace, coke furnace, and fluid tanks. Most notably, the blast furnace has two modes: smelting the ores as normal and alloying the ores based on certain recipes. Since this world adds more ores (iron, copper, tin, gold, silver, and platinum), the complex machine is able to detect which metals are in the inputs and return the correct alloy while displaying the contents of the metals currently in the furnace.

# Particles
The `particles` folder contains functions to load all particle effects.

# School
The `school` folder contains functions for the quizzes the player will encounter in math, engineering, and physics. These functions use the map files in the `data` folder to display the questions and possible answers. Additionally, the functions will generate a custom tellraw message in chat to prompt the player for their answer, similar to the keypad functions in the `configurations` folder. 

# Sewer
The `sewer` folder contains functions for changing the direction of the different sewer tunnels the player can navigate.

# Timer
Lastly, the `timer` folder contains functions for the in-game tick clock that times dialogues and several animations. It includes basic functions to increase and decrease the timer value, as well as instantiating and resetting the timer.
