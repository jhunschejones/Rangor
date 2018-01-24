require './engine.rb'

puts "Rangor is disappointed, but understanding."
$stdin.gets.chomp
puts "\s\s\"Alright then little #{$player_name}, be on your way. I do regret "\
      "that you"
puts "\s\swere not able to assist me in this dire time of need. I wish you luck"
puts "\s\sin the season ahead!\""
$stdin.gets.chomp
puts "The guard escorts you out of the fortress and you cant help but pause at"
puts "the gate, wondering what could have been..."
$stdin.gets.chomp
puts "TO BE CONTINUED..."
$stdin.gets.chomp

puts """*********************************************
THANK YOU FOR PLAYING RANGOR, THE INTERACTIVE 
ADVENTURE GAME, BY JOSHUA HUNSCHE JONES \u00A92017
*********************************************"""

# cleaning out player files
File.delete "#{$player_name}_inventory.txt"
File.delete "#{$player_name}_health.txt"
