require './engine.rb'

# loading veraibles to use them below
engine = LoadStats.new()
current_health = engine.load_health.to_i
current_inventory = engine.load_inventory

#story text
puts "\n"
puts "You use the sewer highway to cross under the river and exit near the "\
      "grocery"
puts "store that is indicated on Rangor's map as the location of the rebel "\
      "hide out."
puts "Sneaking around back, you skirt by a hay bale and find a small entrance "\
      "in the"
puts "side of the dumpster that appears to be long abandoned."
$stdin.gets.chomp
puts "How are you going to get in to the hide out to spy on the meeting?"
puts "#{"*" * 50}"
puts "1. Pick the lock"
puts "2. Break the door down"

# choice involving inventory variable loaded at the top of the file
while true
  print "> "
  choice = $stdin.gets.chomp
  if choice == "1"
    if current_inventory.include? "hair pin"
      puts "You successfully pick the lock with the hair pin you found earlier."
      $stdin.gets.chomp
      break
    else
      puts "Too bad you don't have anything to pick this lock with."
    end
  elsif choice == "2"
    puts "\n"
    puts "With no other option presenting itself, you decide to break down "\
    "the door. You"
    puts "throw your little rat shoulder into it but it doesn’t budge. You "\
    "look around and"
    puts "see a fairly large chunk of wood. You pick it up and use it to bash "\
    "the door in."
    $stdin.gets.chomp
    puts "What a racket!"
    $stdin.gets.chomp
    break
  else
    puts "(Please enter a number to make a choice.)"
  end
end

# story text
puts "You enter the hide-out and it looks like no one has noticed you yet. "\
      "Quickly"
puts "you sneak around to the wall behind the meeting room like Rangor "\
      "suggested."
puts "You see mice moving in the room beyond, serving several rats around a "\
      "small"
puts "table made of an orange box. The biggest of the rats is speaking."
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

# choice loop to decide ending
puts "It appears you have two choices:"
puts "#{"*" * 50}"
puts "1. Stay longer to see if you can hear more."
puts "2. Sneak back out to report what you heard to Rangor."

while true
  print "\n"
  print "> "
  choice = $stdin.gets.chomp
  if choice == "1"
    load './rat/rat_basic04.rb'
    break
  elsif choice == "2"
    load './rat/rat_end_full.rb' 
    break
  else
    puts "(Please enter the number of your choice.)"
  end
end  
