require 'json'

# open stats files to access stats
class UpdateStats
  
  def initialize ()
  end

  def save_health(h)
    @h = h
    file = open "./#{$player_name}_health.txt", 'w+'
    file.truncate(0)
    file.write("#{@h}")
    file.close
  end
  
  def save_inventory(i)
    x = i.to_json
    file = open "./#{$player_name}_inventory.txt", 'w+'
    file.truncate(0)
    file.write(x)
    file.close
  end
end

# save new stats to stats files
class LoadStats
  
  def initialize()
  end

  def load_health()
    file = File.open "./#{$player_name}_health.txt", 'r'
    @health = file.read
  end
  
  def load_inventory()
    file = File.open "#{$player_name}_inventory.txt", 'r'
    y = file.read
    if y == ""
      return Array.new
    else
      new_array = JSON::parse(y)
    end
  end
end
