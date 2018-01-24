require './engine.rb'

# story text
$stdin.gets.chomp
puts "You are provided with temporary quarters in the guest wing and"
puts "the messenger leaves to alert Rangor that you have arrived."

# player choice
$stdin.gets.chomp
puts "What do you do while you wait?"
puts "#{"*" * 50}"
puts "1. Curl up in a warm corner to rest for the adventure ahead."
puts "2. Explore the room."
puts "3. Leave the room to explore the stronghold."

while true
	print "> "
	room_decision = $stdin.gets.chomp

	if room_decision == "1"
		x = LoadStats.new()
		previous_health = x.load_health.to_i
		new_health = previous_health + 0
		save = UpdateStats.new()
		save.save_health(new_health)
		puts "\n"
		puts "You gently drift off to sleep and are awakened by the messengers "\
		"return."
		$stdin.gets.chomp
		load './mouse/mouse_brave02.rb'
		break
	elsif room_decision == "2"
		x = LoadStats.new()
		previous_health = x.load_health.to_i
		new_health = previous_health - 1
		save = UpdateStats.new()
		save.save_health(new_health)
		puts "You find a tray with a cracker, apparently provided for visitors."
		$stdin.gets.chomp
		puts "The messenger returns and lets you know Rangor will see you now"
		$stdin.gets.chomp
		load './mouse/mouse_brave02.rb'
		break
	elsif room_decision == "3"
		x = LoadStats.new()
		previous_health = x.load_health.to_i
		new_health = previous_health - 2
		save = UpdateStats.new()
		save.save_health(new_health)
		puts "You find the door is locked. Curious."
		$stdin.gets.chomp
		puts "After a moment, the messenger returns and lets you know Rangor "\
		"will see you now."
		$stdin.gets.chomp
		load './mouse/mouse_brave02.rb'
		break
	else 
		puts "To make a selection, enter the number of your choice."
	end
end
