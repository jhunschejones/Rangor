require './engine.rb'

puts "A few days later, another message arrives from Rangor."
$stdin.gets.chomp
puts "\t\"I was sorry to hear that you would not be able to assist little"
puts "\t#{$player_name}, no matter what comes in the days head, please"
puts "\tremember that you are a valuable part of this kingdom, and that"
puts "\tyou have more skill and talent than you know. I wish you luck" 
puts "\tin the season ahead!\""
$stdin.gets.chomp

puts "You set the message down on your match box desk but pause at the door. "\
      "Despite"
puts "your propensity towards a safe, mouse-ly life, you cant help but "\
      "wondering"
puts "what might have been..."
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
