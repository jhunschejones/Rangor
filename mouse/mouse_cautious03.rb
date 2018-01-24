require './engine.rb'

# Story text
puts "\n"
puts "You travel across the river using the tunnels and locate the venue Rangor" 
puts "told you about. It is located behind a grocery store in an abandoned " \
      "dumpster."
$stdin.gets.chomp
puts "You see another mouse lurking in the shadows at the side of the "\
      "dumpster. You"
puts "need to signal him so he knows you are the one Rangor sent, and not "\
      "working"
puts "for the rebels. What do you do?"
puts "\n"

# user input, looking for "show the map"
while true
  print "> "
  action = $stdin.gets.chomp
  if action.include? "map"
    puts "The other mouse recognizes Rangor's seal and pulls you into the "\
    "shadows"
    puts "next to the dumpster to explain his plan."
    $stdin.gets.chomp
    break
  elsif action.include? "waive"
    puts "You waive at the rat and he shoots a tiny dart at you. It misses "\
    "your face"
    puts "but nicks your ear. As you turn to hold your ear you drop the map."
    puts "The agent recognizes Rangor's seal and pulls you into the "\
    "shadows next"
    puts "to the dumpster to explain his plan."
    x = LoadStats.new()
    previous_health = x.load_health.to_i
    new_health = previous_health - 1
    y = UpdateStats.new()
    y.save_health(new_health)
    $stdin.gets.chomp
    break
  elsif action.include? "signal"
    puts "You signal the rat and he shoots a tiny dart at you. It misses "\
    "your face"
    puts "but nicks your ear. As you turn to hold your ear you drop the map."
    puts "The agent recognizes Rangor's seal and pulls you into the "\
    "shadows next"
    puts "to the dumpster to explain his plan."
    x = LoadStats.new()
    previous_health = x.load_health.to_i
    new_health = previous_health - 1
    y = UpdateStats.new()
    y.save_health(new_health)
    $stdin.gets.chomp
    break
  else
    puts "I'm not sure that will work. Try something else."
  end
end

# display health
x = LoadStats.new()
current_health = x.load_health
# display current health
puts "\n"
puts "#{"*" * 19}"
puts "Your health is: #{current_health}"
puts "#{"*" * 19}"
puts "\n"

# story text
puts "\s\s\"Here's the plan, I'm going to sneak around back and use a "\
      "listening hole that"
puts "\s\swas drilled earlier by one of Rangor's spies. I need you to help "\
      "me construct"
puts "\s\sa pipe so that I can sit out of site and still hear what is going "\
      "on in the"
puts "\s\smeeting. Can you do that?\""

# prompt for non-empty user response
while true
  print "> "
  r = $stdin.gets.chomp
  if r == ""
    puts "What is your response for the agent?"
  else
    break
  end
end

# display user response with additional story text
puts "\"#{r},\" you respond. \"I have spent a great amount of time in my shop"
puts "working on different types of mechanical devices, so a listening device "\
      "should"
puts "not be too hard if you have the parts.\""
$stdin.gets.chomp
puts "\s\s\"I think I've got everything you need here. There's a hay bail "\
      "behind the"
puts "\s\sdumpster and the rats just ignore it. It's been tunneled out though "\
      "to provide"
puts "\s\sa decent hideout. I've brought in the tools and supplies, do you "\
      "think you"
puts "\s\scan knock something together before sundown? The meeting we need to "\
      "listen to"
puts "\s\swill be tonight.\""

# prompt for non-empty user response
while true
  print "> "
  rr = $stdin.gets.chomp
  if rr == ""
    puts "What is your response for the agent?"
  else
    break
  end
end

puts "\"#{rr},\" you say, and scurry into to the hideout to begin work on "
puts "the device."

load './mouse/mouse_cautious04.rb'
