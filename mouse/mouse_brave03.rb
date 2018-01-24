require './engine.rb'

# Story text
puts "\n"
puts "You travel across the river using the tunnels and locate the venue Rangor" 
puts "told you about. It is located behind a grocery store in an abandoned " \
    "dumpster."
$stdin.gets.chomp
puts "You remember Rangor gave you a hint on how you should be able to sneak " \
    "in."
$stdin.gets.chomp
puts "What do you do?"

# Input loop, looking for player input "join the wait staff"
while true 
  print "> "
  action = $stdin.gets.chomp 
  if action.include? "join"
    break
  elsif action.include? "wait"
    break
  elsif action.include? "staff"
    break
  else
    puts "I don't think that was Rangor's suggestion. Think harder!"
  end
end

# Story text
puts "\n"
print "You sneak around back and find an extra mouse-sized wait staff uniform."
$stdin.gets.chomp
print "\"This is strange,\" you think to yourself."
$stdin.gets.chomp
puts "\"Why would the anti-rodent faction use mice for wait staff?\""
$stdin.gets.chomp
puts "Just as you finish putting on the uniform, lead waiter steps out of a"
puts "hole behind the dumpster and motions you inside."
$stdin.gets.chomp

puts "As you enter the dumpster you find yourself surrounded by several other" 
puts "mice, hustling around preparing food for the meeting."
$stdin.gets.chomp
puts "You grab a tray and head out into the meeting. You see several rats"
puts "gathered around a table made out of an orange box."
$stdin.gets.chomp

puts "\s\s\"We cannot just stand by and let a tyrant give away our valuable "\
"resources!"
puts "\n"
puts "A rat squeaks as he slams his paw on the table."
$stdin.gets.chomp
puts "\s\s\"Be careful, Bones. That sounds an awful lot like treason you're "\
      "spouting."
puts "\s\sYou know that Rangor has been good to those of us on the down "\
      "and out."
puts "\n"
puts "An older rat calls from the other end of the table."
$stdin.gets.chomp
print "You deliver the food on your tray and head back into the corridor."
      puts "\n"
$stdin.gets.chomp

# choice loop to decide ending
puts "It appears you have two choices:"
puts "#{"*" * 50}"
puts "1. Stay longer to see if you can hear more."
puts "\n"
puts "2. Sneak back out to report what you heard to Rangor."
puts "\n"

while true
  print "> "
  choice = $stdin.gets.chomp
  if choice == "1"
    load './mouse/mouse_brave04.rb'
    break
  elsif choice == "2"
    load './mouse/mouse_end_full.rb' 
    break
  else
    puts "(Please enter the number of your choice.)"
  end
end  
  