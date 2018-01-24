require './engine.rb'
require 'json'
$player_name = "test"

# starting array
array = ['cats' , 'dogs' , 'boats']

# serialized array written to file
x = array.to_json
file = open "./#{$player_name}_inventory.txt", 'w+'
file.truncate(0)
file.write(x)
file.close

# array read back from file and converted back to array
file = File.open "#{$player_name}_inventory.txt", 'r'
y = file.read
new_array = JSON::parse(y)

# add a new entry to the array
new_array.push('fish')

# write the array with the new entry back to the file
x = new_array.to_json
file = open "./#{$player_name}_inventory.txt", 'w+'
file.truncate(0)
file.write(x)
file.close

# array read back from file and converted back to array
file = File.open "#{$player_name}_inventory.txt", 'r'
y = file.read
new_array = JSON::parse(y)

# add a new entry to the array
new_array.push('ears')

# write the array with the new entry back to the file
x = new_array.to_json
file = open "./#{$player_name}_inventory.txt", 'w+'
file.truncate(0)
file.write(x)
file.close



## Marshal serialize method ##

# fruits = %w{mango banana apple guava}
# puts fruits
# $stdin.gets.chomp

# serialized_array = Marshal.dump(fruits)

# File.open('./fruits_file.txt', 'w') {|f| f.write(serialized_array) }

# # read the file back
# fruits = Marshal.load File.read('/tmp/fruits_file.txt')

# fruits.push("grape")
# puts fruits

## JSON serialize method ##

# require 'json'

# x = ['apple', 'banana', 'pear'].to_json
# File.open('./fruits_file.txt', 'w') {|f| f.write(x) }

# x = File.read('./fruits_file.txt')
# fruits = JSON::parse(x)

# fruits << 'orange'

# File.open('./fruits_file.txt', 'w') {|f| f.write(fruits) }
# y = File.read('./fruits_file.txt')
# new_fruits = JSON::parse(y)

# puts new_fruits