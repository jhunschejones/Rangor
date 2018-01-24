require './engine.rb'

# Story text
$stdin.gets.chomp
puts "Night approaches faster than you would like but just as the sun is "\
      "setting"
puts "you fix the last piece onto the listening machine."
$stdin.gets.chomp
puts "\s\s\"Is it done yet?\" the agent asks, sticking his head into the "\
      "hideout entrance."

# prompt for non-empty user response
while true
  print "> "
  r = $stdin.gets.chomp
  if r == ""
    puts "What's your response for the agent mouse?"
  else
    break
  end
end
puts "\n"
puts "\"#{r},\" you respond in your little mouse voice."
$stdin.gets.chomp

puts "\s\s\"Alright then,\" grunts the agent in response."
puts "\s\s\"Once we get the identity of the rats involved and some idea of "\
      "their plans,"
puts "\s\swe will need to split up, taking different paths back to the "\
      "stronghold."
puts "\s\sIt is of the upmost importance that what we learn tonight reaches "\
      "Rangor in"
puts "\s\stime."
$stdin.gets.chomp
puts "\s\s\"Well let's hope this works, the meeting is starting now,\""
puts "\n"
puts "the agent says as he crouches in front of the device. You switch it on "
puts "and hear the voices of the rats inside the meeting, projected into your"
puts "small hide-out."
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
puts "\n"
puts "2. Split up and head back report what you heard to Rangor."
puts "\n"

while true
  print "> "
  choice = $stdin.gets.chomp
  if choice == "1"
    load './mouse/mouse_cautious05.rb'
    break
  elsif choice == "2"
    load './mouse/mouse_end_full.rb' 
    break
  else
    puts "(Please enter the number of your choice.)"
  end
end  
