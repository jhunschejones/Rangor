require './engine.rb'

# story text
puts "You return back to Rangor's fortress to report the news."
$stdin.gets.chomp
puts "\s\s\"Sir, there is a rat named Bones who is out for your throne because"
puts "\s\she thinks you are giving away valuable resources. As I listened in"
puts "\s\sat their meeting, it seemed there were still some rats present who"
puts "\s\sspeak well of you. I would like to caution you...\""

# player response, looking for non-blank answer
while true
  print "> "
  choice = $stdin.gets.chomp
  if choice == ""
    puts "(Please enter your response. What do you want to tell Randor?)"
  else
    puts "\n"
    puts "You finish your report with an urgent spin and one last warning:"
    puts "\s\s\"#{choice}\""
    $stdin.gets.chomp
    break
  end
end

# story text
puts "Rangor strokes the gray hair on his chin, apparently considering your"
puts "impassioned speech."
$stdin.gets.chomp
puts "His eyes harden"
puts "\s\s\"I like the way you think #{$player_name}. I believe the time has "\
      "come to...\""
$stdin.gets.chomp

puts "Just then, a bell starts to toll, somewhere outside the fortress."
$stdin.gets.chomp
puts "You hear a desperate squeak from outside,"
$stdin.gets.chomp
puts "\s\s\"We are under attack! The rebels are flanking the fortress!\""
$stdin.gets.chomp
puts "Rangor's bright expression falls and he slams his paw down."
$stdin.gets.chomp
puts "\s\s\"How could we be too late! To arms, guards! We must hold the fort "\
      "at all costs!"
$stdin.gets.chomp

#story text, end
puts "A guard approaches to escort you out of the throne room."
$stdin.gets.chomp
puts "\s\s\"Thank you for your services #{$player_name} the shrew. My only "\
      "regret is that"
puts "\s\swe were too late to stop the revolution. Go somewhere safe, there is"
puts "\s\sno telling to what length these rebels will go to stop me and "\
      "destroy" 
puts "\s\smy kingdom.\""
$stdin.gets.chomp
print "The guard escorts you out."
$stdin.gets.chomp

puts "Was there anything different you could have done?"
$stdin.gets.chomp
puts "\tWho knows."
$stdin.gets.chomp
puts "Will Rangor be able to hold on to his kingdom and restore order before "
puts "the winter closes in?"
$stdin.gets.chomp
puts "\tOnly time will tell."
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
