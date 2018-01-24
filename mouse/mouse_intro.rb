require './engine.rb'

# set starting health to 10
starting_health = UpdateStats.new()
starting_health.save_health(10)

# deleting inventory
File.delete "#{$player_name}_inventory.txt"

# story text
print "As #{$player_name} the mouse, you live a simple existence."
$stdin.gets.chomp
print "You run a small supply shop in a sewer drain downtown."
$stdin.gets.chomp
puts "One day you receive an important summons from a messenger of Rangor."
$stdin.gets.chomp
puts "It reads:"
puts """\tGreetings subject. I send tidings from the stronghold of Rangor.
\tYour assistance is requested on a mission of upmost secrecy.
\tI understand this is a busy season for your shop, but I promise
\tyou will be rewarded handsomely for your assistance."""
$stdin.gets.chomp

# select "brave," "cautious," or "afraid" character path
puts "What do you do with the message?"
puts "#{"*" * 50}"
puts """1. Follow the messenger back to help right away.
   (You are not afraid of any danger!)"""
puts "\n"
puts """2. Send a message back saying you will follow shortly. 
   (As a mouse, you are naturally timid and want to see  
    what this is all about first.)"""
puts "\n"
puts """3. Ignore the message and continue on with your work.
   (Surely there is someone better suited for this type 
    of thing!)"""
puts "\n"

while true
	print "> "
	choice = $stdin.gets.chomp

	if choice == "1"
		puts "Clearly you have the heart of a warrior mouse!"
		puts "The messenger is surprised, but gladly leads you back to Rangor's"
		puts "stronghold."
		load './mouse/mouse_brave01.rb'
		break
	elsif choice == "2"
		puts "The rat king understands your hesitancy and patiently "\
		"awaits your arrival."
		load './mouse/mouse_cautious01.rb'
		break
	elsif choice == "3"
		puts "The rat king is not upset, but he wishes you had come."
		puts "You continue to work the store as winter approaches."
		load './mouse/mouse_end_afraid.rb'
		break
	else 
		puts "To make a selection, enter the number of your choice."
	end
end
