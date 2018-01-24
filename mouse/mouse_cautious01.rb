require './engine.rb'

# story text
puts "\n"
puts "You quickly tie up your affairs at the supply store and pack supplies "\
"for the"
puts "journey down to Rangor's stronghold. It has only been a few days since "\
"the"
puts "messenger's first visit, but the customers frequenting your shop are "\
"already"
puts "brining new stories of unrest in the outer areas of the rat kingdom."
$stdin.gets.chomp
puts "As you lock up the front of your shop, a cold wind blows down the "\
"gutter. It "
puts "feels like a hard journey ahead, though the stronghold is only a few"\
"days by"
puts "tunnel. Do you:"
puts "\n"
puts "#{"*" * 50}"

# user input loop, affects health
puts """1. Head back inside and grab an extra scarf 
(you need to arrive at the stronghold with enough 
strength to assist Rangor with whatever problem 
he is facing)"""
puts "\n"
puts """2. Pull your hat down and start along the path 
(You are already a few days behind and you don't 
know how long you have to help Rangor with whatever 
problem he is facing.)"""
puts "\n"

while true
  print "> "
  choice = $stdin.gets.chomp
  if choice == "1"
    x = LoadStats.new()
    previous_health = x.load_health.to_i
    new_health = previous_health - 1
    y = UpdateStats.new()
    y.save_health(new_health)
    break
  elsif choice == "2"
    x = LoadStats.new()
    previous_health = x.load_health.to_i
    new_health = previous_health - 2
    y = UpdateStats.new()
    y.save_health(new_health)
    break
  else
    puts "(Please use numbers to select a choice)"
  end
end

#story text
puts "As night falls after the first day of travel, you see the gutter grate "\
      "marking"
puts "the halfway point of your journey. You know the cold nights this time of"
puts "year can be dangerous for someone of your diminutive stature. Do you:"
$stdin.gets.chomp
puts "#{"*" * 50}"
puts "1. Take shelter for the night in a can in the gutter"
puts "2. Backtrack to the last mouse village you passed an hour ago"
puts "3. Press on with your journey"
puts "\n"

# user input loop, affects health
while true
  print "> "
  choice = $stdin.gets.chomp
  if choice == "1"
    x = LoadStats.new()
    previous_health = x.load_health.to_i
    new_health = previous_health - 1
    y = UpdateStats.new()
    y.save_health(new_health)
    load './mouse/mouse_cautious02.rb'
    break
  elsif choice == "2"
    x = LoadStats.new()
    previous_health = x.load_health.to_i
    new_health = previous_health + 1
    y = UpdateStats.new()
    y.save_health(new_health)
    load './mouse/mouse_cautious02.rb'
    break
  elsif choice == "3"
    x = LoadStats.new()
    previous_health = x.load_health.to_i
    new_health = previous_health - 3
    y = UpdateStats.new()
    y.save_health(new_health)
    load './mouse/mouse_cautious02.rb'
    break
  else
    puts "(Please use numbers to select a choice)"
  end
end
