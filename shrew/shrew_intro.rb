require './engine.rb'

# set starting health to 10
starting_health = UpdateStats.new()
starting_health.save_health(10)

# story text
puts "As #{$player_name} the shrew, you live in a small shrew cottage on a "\
      "forrest"
puts "trail. Your favorite things are spinning, whistling at the moon, and "\
      "spinning."
puts "Some think you might have a 'few crickets lose', but that doesn't "\
      "bother you."
$stdin.gets.chomp
puts "Of course, this could be because of the other thing people whisper "\
      "about you:"
puts "that you somehow appear to have an uncanny ability to know when dangers "\
      "are"
puts "close before anyone else." 
$stdin.gets.chomp
puts "...Of course it could also be because you spun so much today you can't "\
      "really"
print "understand what it is they are saying."
sleep 1
print "."
sleep 1
print "."
sleep 1
puts " We may never know."
$stdin.gets.chomp

puts "One day, after your morning spin and a couple whistles, you receive an "\
      "important"
puts "summons from a messenger of Rangor."
$stdin.gets.chomp
puts "It reads:"
puts """\tGreetings subject. I send tidings from the stronghold of Rangor.
\tYour assistance is requested on a mission of upmost secrecy.
\tI understand this is a busy season for your shop, but I promise
\tyou will be rewarded handsomely for your assistance."""
$stdin.gets.chomp

# get player input, two choices are funny, only choice 1 proceeds
puts "How would you like to respond?"
puts "#{"*" * 50}"
puts """1. Follow the messenger back to help right away.
     (You feel some inner pull calling you 
             to help the rat king)"""
puts "2. Spin"
puts "3. Whistle"

while true
	print "> "
	choice = $stdin.gets.chomp

	if choice == "1"
    puts "Clearly you have the heart of a spinningly brave shrew! The "\
    "messenger  is"
    puts "pleased and gladly leads you back to Rangor's stronghold."
    $stdin.gets.chomp
		load './shrew/shrew_basic01.rb'
		break
	elsif choice == "2"
    puts "Before you respond, you feel the need to take a couple spins. The "\
    "messenger"
    puts "waits patiently, having hear the rumors of your supposed mental "\
    "state."
    sleep 3
    puts "\tSpin!"
    sleep 1
    puts "\t\tSpin!"
    sleep 1
    puts "\t\t\tSpin!"
    sleep 2
    puts "\n"
    puts "As you spin to a stop, you consider Rangor's message again."
	elsif choice == "3"
    puts "You whistle with joy. What a great day this is. How exciting the "\
    "cooling fall"
    puts "weather. A true season of the golden leaf if you ever saw one!" 
    sleep 3
    puts "\n"
    puts "Wait a minute, what was it you were thinking about?"
    sleep 2
    puts "\n"
    puts "Oh yeah, Rangor's message..."
	else 
		puts "(To make a selection, enter the number of your choice.)"
	end
end
