require './engine.rb'

# loads and displays health and inventory stats
engine = LoadStats.new()
current_health = engine.load_health.to_i
current_inventory = engine.load_inventory
puts "#{"*" * 28}"
puts "Your health is: #{current_health}"
puts "Your items are: #{current_inventory}"
puts "#{"*" * 28}"
$stdin.gets.chomp

# next story content, mission assignment
puts "You walk down the corridor with the messenger into the gilded throne "\
      "room of"
puts "Rangor, the king of the rats."
puts """\s\s\"#{$player_name},\" he calls out as you enter,
\s\s\"I am so glad you could assist me at such short notice.\""""
$stdin.gets.chomp
puts "You are impressed he knows your name, but he continues."
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
\s\syou do what you can to confirm the identity of those in attendance and glean
\s\ssome of their plans. With this information, I will hopefully be able to 
\s\squickly deploy my guard to put this to rest.\""""

# ask for player input, negative exits the game, positive continues
puts "\n"
puts "You take a quick spin, then shrewdly squeak:"

while true
  print "> "
  choice = $stdin.gets.chomp
  if choice == ""
    puts "(Please enter your response for Rangor.)"
  elsif choice.include? "no"
    load './mouse/mouse_end_short.rb'
    break
  else
    puts "\n"   
    puts "Rangor responds enthusiastically,"
    puts "\s\s\"I knew I could count on you #{$player_name}. You are a shrew "\
         "above the rest!\""
    break
  end
end

# story text
$stdin.gets.chomp
puts "\s\s\"I trust you know how to get to the other side of the river,"
puts "\s\sI will send you on your way with the location of the hideout.\""
$stdin.gets.chomp

puts "Rangor hands you a small map with the rebel's location. It's time to"
puts "head out on your journey. A guard escorts you out of the fortress and"
puts "waives farewell."
$stdin.gets.chomp
puts "As you walk along the path shown on Rangor's map, you start to make a "\
      "plan," 
puts "and find yourself whistling an adventure tune."
puts "How will you get to the other side of the river?"

# seeking player input "swim across the river"
while true
  print "> "
  choice = $stdin.gets.chomp
  
  if choice == ""
    puts "(Please enter a response--how will you get to the other side?)"
  elsif choice.include? "swim"
    load './shrew/shrew_basic03.rb'
    break
  else
    puts "You can do better than that, you're #{$player_name} the shrew!"
  end
end
