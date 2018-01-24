require './engine.rb'

# get new user values
puts "Health?"
print "> "
health = $stdin.gets.chomp.to_i
# puts "items?"
# print "> "
# items = $stdin.gets.chomp.to_a

# open the save-file with previous value
load = LoadStats.new()
previous_health = load.load_health.to_i
# load = LoadStats.new()
# previous_inventory = load.load_inventory.to_a

# do math with the new value and previous value
new_health = health + previous_health

# save new value in the same save-file
save = UpdateStats.new()
save.save_health(new_health)
# save.save_inventory("#{items}")