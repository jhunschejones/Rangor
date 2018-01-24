require './engine.rb'

# story text
puts "\n"
puts "As soon as the messenger leaves you rush to the back of your store and "
      "locate" 
puts "a new invention you have been honing. You pick up the device and press "\
      "a button"
puts "on the side. After a short burst of static, a small voice comes through."
$stdin.gets.chomp
puts "\s\s\"Greetings #{$player_name}, this the is rat crew lieutenant. "\
      "Please tell"
puts "\s\sme you called for something important.\""
$stdin.gets.chomp
puts "You explain the message from Rangor to your contact and ask him to "\
      "check if"
puts "it is a trap, or if the rat king is really in such a tight spot that he "\
      "would"
puts "request help from you."
$stdin.gets.chomp
puts "In the silence that follows, you begin to gather a few small supplies "\
      "for your" 
puts "trip ahead. You pick up a small knife and look at it briefly before "\
      "packing it"
puts "as well."
$stdin.gets.chomp

# add "knife" and "supply pack" to inventory
load = LoadStats.new()
inventory = load.load_inventory
new_inventory = inventory.push('knife', 'supply pack')
save = UpdateStats.new()
save.save_inventory(new_inventory)

#story text
puts "You turn at the sound of the device crackling to life again."
$stdin.gets.chomp
puts "\s\s\"#{$player_name} I checked with our network downtown and it seems "\
      "a messenger"
puts "\s\smatching your description can be confirmed to have departed from "\
      "Rangor's"
puts "\s\sstronghold this morning. Sounds like this is real. Thank you for "\
      "passing this"
puts "\s\sinformation along. We were not aware that the rebel group might be "\
      "mobilizing"
puts "\s\sso soon."
$stdin.gets.chomp
puts "You thank your contact and shoulder your pack, switching the device off "\
      "and"
puts "turing off the switch controlling the car battery behind your store. "\
      "The delay"
puts "cost you less than an hour so you rush out to try and catch up with the" 
puts "messanger, hoping he can help announce you at the stronghold."
$stdin.gets.chomp
puts "Luckily, it appears the messenger has stopped at a nearby rat bar for "\
      "a drink."
puts "He sees you through the door and quickly pays up and comes out front "\
      "to join"
puts "you."
$stdin.gets.chomp
puts "\s\s\"Rangor suggested I wait nearby if you did not at first accept "\
      "the invitation."
puts "\s\sIt seems he was right about your character and propensity for "\
      "caution. Let's"
puts "\s\shurry, we can still make the stronghold before it's too dark.\""

load './rat/rat_basic01.rb'
