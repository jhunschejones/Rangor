require './engine.rb'
$player_name = "Roo"

engine = LoadStats.new()
current_inventory = engine.load_inventory

puts "#{current_inventory}"

# the .pop command will not work here

# the .delete command returns the deleted value
# new_inventory = current_inventory.delete("small hat")

# doing math on the array returns the adjusted array
new_inventory = current_inventory - ["small hat"]
save = UpdateStats.new()
save.save_inventory(new_inventory)