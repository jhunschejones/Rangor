require './engine.rb'

x = LoadStats.new()
current_health = x.load_health

# story text
puts "The morning arrives even colder than you expected. You trek on towards"
puts "the stronghold, hoping to arrive without having to stop another night."
$stdin.gets.chomp

# display current health
puts "#{"*" * 19}"
puts "Your health is: #{current_health}"
puts "#{"*" * 19}"
puts "\n"

# story text 
puts "As the sun moves across the sky, the temperature warms slightly and you"
puts "see a sign for the tunnel you know leads to the stronghold. At last!"
$stdin.gets.chomp
puts "You approach the front gate and are greeted by a guard."
$stdin.gets.chomp
puts "\s\s\"Follow me #{$player_name}, Rangor is eager to speak with you.\""
$stdin.gets.chomp
puts "You follow the guard into the throne room and find Rangor, king of the "\
      "rats."   
$stdin.gets.chomp

puts """\s\s\"#{$player_name},\" he calls out as you enter,
\s\s\"I am so glad you could assist me at such short notice.\""""
$stdin.gets.chomp
puts "You are impressed he remembers your name, and he continues."
$stdin.gets.chomp
puts """\s\s\"I do not wish to be blunt, but I find myself in a tough spot. As a
\s\sresult of what some consider my lenient treatment of the other creatures who
\s\sparticipate in our rat society, there is a strong faction rising amongst
\s\sthe rats who wish to start a revolt. Normally, I would involve the rat
\s\sarmy to solve such an upheaval, but with the fast approaching winter months
\s\sI cannot afford the luxury of time.\""""
$stdin.gets.chomp
puts """\s\s\"My spies on the far side of the river have let me know there will 
\s\sbe a key meeting amongst the leaders of the rebel movement that will occur 
\s\sin two days time. I have called you to my side in this dire hour to ask that 
\s\syou assist one of my agents who is sneaking into this meeting. The goal will 
\s\sbe to identify who is leading the rebels and how likely they are to start 
\s\san actual revolt. Can you help?\""""

# ask for player input, negative exits the game, positive continues
puts "\n"
puts "Though your paws tremble slightly, you respond:"

while true
  print "> "
  choice = $stdin.gets.chomp
  if choice == ""
    puts "(Please enter your response for Rangor.)"
  elsif choice.include? "no"
    load 'mouse_end_short.rb'
    break
  else
    puts "\n"   
    puts "Rangor responds enthusiastically,"
    puts "\s\s\"I knew I could count on you #{$player_name}. You are a mouse "\
         "above the rest!\""
    break
  end
end

# story text
$stdin.gets.chomp
puts "\s\s\"I trust you know how to get to the other side of the river,"
puts "\s\sI will send you on your way with the location of the hideout."
puts "\s\sMy agent already has a few days head start on you, so please hurry!"
puts "\s\sThe map has my official seal, show this as a sign that you have"
puts "\s\scome on an errand from me.\""
$stdin.gets.chomp

puts "Rangor hands you a small map with the rebel's location. It's time to"
puts "head out on your journey. A guard escorts you out of the fortress and"
puts "salutes farewell."
$stdin.gets.chomp
puts "As you walk along the path shown on Rangor's map, you start to make a "\
      "plan."
puts "How will you get to the other side of the river?"

while true
  print "> "
  choice = $stdin.gets.chomp
  
  if choice == ""
    puts "(Please enter a response--how will you get to the other side?)"
  elsif choice.include? "tunnel"
    load './mouse/mouse_cautious03.rb'
    break
  else
    puts "That probably won't work. You're a mouse after all."
  end
end
