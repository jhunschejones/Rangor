require './engine.rb'
require 'json'
$player_name = "test"




# when there is an array item in the inventory, this works
load = LoadStats.new()
old_inventory = load.load_inventory

new_inventory = old_inventory.push('test')

save = UpdateStats.new()
save.save_inventory(new_inventory)