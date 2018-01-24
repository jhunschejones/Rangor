require './engine.rb'

# set starting health to 10
starting_health = UpdateStats.new()
starting_health.save_health(10)

# story text
puts "As #{$player_name} the rat, you live an exciting, adventurous life. You "\
			"run a"
puts "specialty store in a sewer drain downtown, selling the newest of rat "\
			"world"
puts "technology."
$stdin.gets.chomp
puts "One day you receive an important summons from a messenger of Rangor."
$stdin.gets.chomp
puts "It reads:"
puts """\tGreetings subject. I send tidings from the stronghold of Rangor.
\tYour assistance is requested on a mission of upmost secrecy.
\tI understand this is a busy season for your shop, but I promise
\tyou will be rewarded handsomely for your assistance."""
$stdin.gets.chomp

# get player input
puts "How would you like to respond?"
puts "#{"*" * 50}"
puts """1. Follow the messenger back to help right away.
   (You are not afraid of any danger!)"""
puts "\n"
puts """2. Send a message back saying you will follow shortly. 
   (Your business has taught you not to trust strangers 
       too quickly and you want to look into this.)"""
puts "\n"

while true
	print "> "
	choice = $stdin.gets.chomp

	if choice == "1"
		puts "Clearly you have the heart of a warrior rat!"
		puts "The messenger is pleased and gladly leads you back to Rangor's"
		puts "stronghold."
		load './rat/rat_basic01.rb'
		break
	elsif choice == "2"
		puts "The rat king understands your hesitancy and patiently "\
		"awaits your arrival."
		load './rat/rat_sidetrack.rb'
		break
	else 
		puts "To make a selection, enter the number of your choice."
	end
end
