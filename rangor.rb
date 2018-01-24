# pulls in the game engine, this starts every game file
require './engine.rb'
# clears the terminal screen in windows or mac to start the game
Gem.win_platform? ? (system "cls") : (system "clear")

# this section shows the game header and navigation options
print """
*************************************************
WELCOME TO RANGOR, THE INTERACTIVE ADVENTURE GAME
*************************************************
  > Press ENTER to continue, CTRL + C to quit"""
$stdin.gets.chomp
print """  > Use numbers to make selections"""
$stdin.gets.chomp
print """  > Enter responses when prompted"""
$stdin.gets.chomp
print """  > Your health level will start at 10"""
$stdin.gets.chomp

# this section is used to get the players name, used in the game text and 
# to name the save-files
puts "\n"
puts "Tell me about yourself, what's your name?"
while true
	print "> "
	$player_name = $stdin.gets.chomp

	if $player_name != ""
		break
	else
		puts "Please enter a player name."
	end
end

# creates the save-file for health
File.new "#{$player_name}_health.txt", 'w'
file = open "#{$player_name}_health.txt", 'w'
file.write "Welcome #{$player_name}, this is where we will store your health "\
						"stats."
file.close

# creates save-file for inventory
File.new "#{$player_name}_inventory.txt", 'w'
# file = open "./#{$player_name}_inventory.txt", 'w'
# file.write "Welcome #{$player_name}, this is where we will store your item "\
# "stats."
file.close

puts "\n"
puts "Welcome #{$player_name}! Please choose a character."
puts "1. #{$player_name}, the mouse"
puts "2. #{$player_name}, the rat"
puts "3. #{$player_name}, the shrew"

while true
  print "> "
  choice = $stdin.gets.chomp
	if choice == "1"
		puts "You picked #{$player_name} the mouse. Good choice!"
		$stdin.gets.chomp
		load './mouse/mouse_intro.rb'
		break
	elsif choice == "2"
		puts "You picked #{$player_name} the rat. Nice!"
		$stdin.gets.chomp
		load './rat/rat_intro.rb'
		break
	elsif choice == "3"
		puts "You picked #{$player_name} the shrew. How adorable."
		$stdin.gets.chomp
		load './shrew/shrew_intro.rb'
		break
	else 
		puts "(To make a selection, enter the number of your choice.)"
	end
end
	