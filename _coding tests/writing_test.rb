require './engine.rb'

# prompt for user name to use in save-file names
puts "Tell me about yourself, what's your name?"
print "> "
$player_name = $stdin.gets.chomp

# creates the save-file for health
File.new "#{$player_name}_health.txt", 'w'
file = open "#{$player_name}_health.txt", 'w'
file.write "Welcome #{$player_name}, this is where we will store your health stats."
file.close

# # creates save-file for inventory
# File.new "#{$player_name}_inventory.txt", 'w'
# i = open("./#{$player_name}_inventory.txt", 'w')
# i.write("Welcome #{$player_name}, this is where we will store your item stats.")
# i.close

# gets user input
puts "Health?"
print "> "
health = $stdin.gets.chomp.to_i
# puts "items?"
# print "> "
# items = $stdin.gets.chomp.to_a

# saves the user input to the save-file
save = UpdateStats.new()
save.save_health(health)
# save.save_inventory("#{items}")

puts "ready for number two?"
$stdin.gets.chomp
load './writing_test2.rb'