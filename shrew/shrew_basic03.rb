require './engine.rb'

# loading these veraibles to use them below
engine = LoadStats.new()
current_health = engine.load_health.to_i
current_inventory = engine.load_inventory

#story text
puts "\n"
puts "Somehow, you are able to swim across the entire river. You climb out "\
      "and make"
puts "your way to the grocery store that is indicated on Rangor's map as "\
      "the"
puts "location of the rebel hide out."
$stdin.gets.chomp
puts "Sneaking around back, you pass by a hay bale and a small door in the side" 
puts "of the dumpster and approach the front entrance of the hide out. You "\
      "whistle"
puts "a suspenseful song, and a mouse standing at the door looks up."
$stdin.gets.chomp
print "\"How odd,\" you think to yourself."
$stdin.gets.chomp
puts "Why would a mouse be guarding a rebel lair that houses a group who "\
      "despises"
puts "all small-rodent kind?"
$stdin.gets.chomp
puts "How are you going to get past the guard to spy on the meeting?"
puts "#{"*" * 50}"
puts "1. Give the mouse guarding the door a present"
puts "2. Whistle a lullaby to put the guard to sleep"
puts "3. Spin so fast the guard gets dizzy and falls over"

# choice involving inventory variable loaded at the top of the file
while true
  print "> "
  choice = $stdin.gets.chomp
  if choice == "1"
    if current_inventory.include? "small hat"
      puts "\n"
      print "You pull out the small hat you found earlier and hand it to the "\
      "guard."
      $stdin.gets.chomp
      puts "At first he is surprised, but then he smiles and opens the door "\
      "to let you in."
      $stdin.gets.chomp
      # removes item from inventory
      new_inventory = current_inventory - ["small hat"]
      save = UpdateStats.new()
      save.save_inventory(new_inventory)
      break
    else
      puts "Too bad you didn't pick up any presents along the way."
    end
  elsif choice == "2"
    puts "\n"
    puts "You start to whistle a lullaby and the guard looks at you "\
    "quizically. All the"
    puts "sudden his eyes open with recognition and he looks confused. "\
    "Aparently making"
    puts "up his mind, he stands aside and motions you into the hide out."
    $stdin.gets.chomp
    puts "You think to yourself,"
    sleep 1
    puts "\s\s\"Did the guard just recognize me?\"" 
    sleep 2
    puts "\s\s\"Oh, I do love this part of the song...\""
    sleep 2
    puts "\n"
    puts "And you walk into the hide out."
    break
  elsif choice == "3"
    print "You start to spin around"
    sleep 1
    print "."
    sleep 1
    print "."
    sleep 1
    print "."
    sleep 1
    puts " What was it you were doing again?" 
    sleep 1
    puts "\n"
    puts "Oh yes, the guard. It looks like you'll need to find a way to get "\
    "past the"
    puts "guard into the hide out."
  else
    puts "(Please enter a number to make a choice.)"
  end
end

# story text
puts "You enter the hide out and find yourself in a busy hall way with even "\
      "more mice,"
puts "some dressed as servers, others in business professional attire." 
$stdin.gets.chomp
puts "\tWhat a site."
$stdin.gets.chomp
puts "You think about spinning and then decide to take a turn down a small, "\
      "darker"
puts "hallway. As you move down the hall, a small prick of light draws your "
      "eye to"
puts "the wall at your side. To your surprise, it's a peep hole!"
$stdin.gets.chomp
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
puts "1. Take a quick spin and stay longer to see if you can hear more."
puts "2. Sneak back out to report what you heard to Rangor."

while true
  print "\n"
  print "> "
  choice = $stdin.gets.chomp
  if choice == "1"
    load './shrew/shrew_basic04.rb'
    break
  elsif choice == "2"
    load './shrew/shrew_end_full.rb' 
    break
  else
    puts "(Please enter the number of your choice.)"
  end
end  
