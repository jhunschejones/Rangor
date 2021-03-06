require './engine.rb'

# story text
puts "You arrive at the stronghold in early evening. The messenger leads you "\
			"down"
puts "a quiet hallway to the side of the entrance. You are provided with "\
			"temporary"
puts "quarters in the guest wing and the messenger leaves to alert Rangor "\
			"that you"
puts "have arrived."
$stdin.gets.chomp

# player choice
puts "It was a long journey, what do you do while you wait?"
puts "#{"*" * 50}"
puts "1. Curl up in a warm corner to rest up for the adventure ahead."
puts "2. Explore the room."
puts "3. Leave the room to explore the stronghold."
puts "4. Spin."

while true
	print "> "
	room_decision = $stdin.gets.chomp

	if room_decision == "1"
		# load health and do math to it, then save it again
		x = LoadStats.new()
		previous_health = x.load_health.to_i
		new_health = previous_health + 0
		save = UpdateStats.new()
		save.save_health(new_health)
		# story text
		puts "\n"
		puts "You gently whistle off to sleep and are awakened by the "\
		"messengers return."
		$stdin.gets.chomp
		load './shrew/shrew_basic02.rb'
		break
	elsif room_decision == "2"
		# loads health and does math, then stores it
		x = LoadStats.new()
		previous_health = x.load_health.to_i
		new_health = previous_health - 1
		save = UpdateStats.new()
		save.save_health(new_health)
		# loads inventory and adds small hat, stores to inventory file
		load = LoadStats.new()
		old_inventory = load.load_inventory
		new_inventory = old_inventory.push('small hat')
		save = UpdateStats.new()
		save.save_inventory(new_inventory)		
		# story text
		puts "You find a small hat and a candy corn."
		$stdin.gets.chomp
    puts "You eat the candy corn and the messenger returns and lets you know "\
    "Rangor"
    puts "will see you now."
		$stdin.gets.chomp
		load './shrew/shrew_basic02.rb'
		break
	elsif room_decision == "3"
		# loads health, does math, saves new health
		x = LoadStats.new()
		previous_health = x.load_health.to_i
		new_health = previous_health - 2
		save = UpdateStats.new()
		save.save_health(new_health)
		# story text
		puts "You find the door is locked. Curious."
		$stdin.gets.chomp
		puts "You take a few spins..."
		sleep 1
		puts "\tSpin!"
    sleep 1
    puts "\t\tSpin!"
    sleep 1
    puts "\t\t\tSpin!"
    sleep 2
		puts "After a moment, the messenger returns and lets you know Rangor "\
		"will see you now."
		$stdin.gets.chomp
		load './shrew/shrew_basic02.rb'
		break
  elsif room_decision == "4"
  	# sleep 1
		puts "\tSpin!"
    sleep 1
    puts "\t\tSpin!"
    sleep 1
    puts "\t\t\tSpin!"
    sleep 1
    puts "\t\t\t\tSpinnnnn!"
    sleep 2
    puts "Now what?"
	else 
		puts "(To make a selection, enter the number of your choice.)"
	end
end
