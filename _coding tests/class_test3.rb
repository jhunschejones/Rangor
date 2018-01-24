# define a class for saving a user value to a file
class SaveValue
  def initialize()
  end
  
  def take_value(v)
    @v = v
    File.new "save.txt", 'w'
    file = open "save.txt", 'w'
    file.write(@v)
    file.close
  end
end

# define a class for retrieving a value from a file
class GetValue
  def initialize()
  end

  def get_value()
    file = File.open "save.txt", 'r'
    @v = file.read
  end
end

# get the user input and save it to a file
puts "Input value"
print "> "
v = $stdin.gets.chomp

save = SaveValue.new()
save.take_value(v)

# gets second user value as an integer
puts "Second Value"
print "> "
w = $stdin.gets.chomp.to_i

# pulls value from file and sets it to a variable as an integer
load = GetValue.new()
x = load.get_value.to_i

# shows value stored in file and second user input value
# puts "x is #{x}, w is #{w}"

new_value = x + w
# puts "#{new_value}"
save = SaveValue.new()
save.take_value(new_value)