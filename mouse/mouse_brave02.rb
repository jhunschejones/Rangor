require './engine.rb'

# load and display stats
engine = LoadStats.new()
current_health = engine.load_health.to_i
puts "\n"
puts "#{"*" * 50}"
puts "Your health is: #{current_health}"
puts "#{"*" * 50}"
$stdin.gets.chomp

# story content, mission assignment
puts "You pad down the corridor with the messenger into the gilded throne "\
      "room of"
puts "Rangor, the king of the rats."
$stdin.gets.chomp
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
\s\syou sneak into this meeting among the wait staff and confirm the identity 
\s\sof those in attendance. With this information confirmed, I will hopefully 
\s\sbe able to quickly deploy my guard to put this to rest.\""""

# ask for player input, negative exits the game, positive continues
puts "\n"
puts "Though your paws tremble slightly, you respond:"

while true
  print "> "
  choice = $stdin.gets.chomp
  if choice == ""
    puts "(Please enter your response for Rangor.)"
  elsif choice.include? "no"
    load '.mouse/mouse_end_short.rb'
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
puts "\s\sI will send you on your way with the location of the hideout.\""
$stdin.gets.chomp
puts "Rangor hands you a small map with the rebel's location. It's time to"
puts "head out on your journey. A guard escorts you out of the fortress and"
puts "waives fairwell."
$stdin.gets.chomp
puts "As you walk along the path shown on Rangor's map, you start to make a "\
    "plan."
puts "How will you get to the other side of the river?"

# seeking player input "use the tunnels"
while true
  print "> "
  choice = $stdin.gets.chomp
  
  if choice == ""
    puts "(Please enter a response--how will you get to the other side?)"
  elsif choice.include? "tunnel"
    load './mouse/mouse_brave03.rb'
    break
  else
    puts "That probably won't work. You're a mouse after all."
  end
end
