require "./engine.rb"


# test the engine

$peanuts = Health.new(5)

puts "Initial:"
$peanuts.show_health

$peanuts.add_health(2)

puts "Final:"
$peanuts.show_health

puts "Next file?"
$stdin.gets.chomp

load './class_test2.rb'