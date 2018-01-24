# Rangor (Ruby)
## Overview
This represents my first project as a software developer. After reading a couple books about ruby and working through close to a hundred exercises, I put my early knowledge to the test to build this fun little game.

## Objective
Build a simple, command-line text adventure game using Ruby.

## Steps Taken
First I wrote my copy for the storyline. Deciding on the game structure was important because I needed to know what decision points would require me to branch off in new directions. I then dove into the code and decided it would be easiest if I had a way to work on the story one piece at a time. This lead me to the current structure for the game, existing across several .rb files in different folders for the three characters a player can choose. From there, I wrote out the basic if-elsif-else branches and while loops that would enable my game to collect valid input from the player. Finally, as I wrote each character, I added additional functionality to the game. I started a separate “game engine” file to store some shared tools I would need to access, then I proceed to write the code to keep track and adjust a player’s health. I went on to also add an inventory to store items a player could pick up and lastly I wrote a way to remove items from the inventory if they were used.

## Result
I am especially proud of the “[game engine](https://gist.github.com/jhunschejones/7f7f1b1f2bca294ee03d672fdcd8ad48.js)” code I wrote. I did not have any templates or pre-written code for this project so I had to puzzle out the logic myself.  With the large number of files handled in the game, I realized I would not be able to store values or arrays in a variable with reliable enough results. Instead I wrote the game engine to write and retrieve data from storage .txt files created during the game. This worked well for health, but I had to write additional logic to enable a user to store items in an “inventory” array, because I could not preform simple math functions on strings. Finally, I  had to learn a little JSON to enable my program to talk to the game engine and “inventory" file to remove an item when it was used.

_How to Play_
1. [Install Ruby](https://www.ruby-lang.org/en/documentation/installation/)
2. Download the entire directory
3. In your console application, navigate to the “rangor” directory
4. Run the game with the command “ruby rangor.rb”
5. Follow the instructions and enjoy!
