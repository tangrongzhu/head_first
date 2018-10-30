def accelerate
  puts "Stepping on the gas"
  puts "Speeding up"
end

def sound_horn
  puts "Pressing the horn button"
  puts "Beep beep!"
end

def use_headlights(brightness = "low-beam")
  puts "Turning on #{brightness} headlights"
  puts "Watch out for deer!"
end

# Dog class
class Dog

  #attr_reader :name, :age

  def name
   @name
  end

  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    else
      @name = value
    end
  end

  def age=(value)
    if value<0
      raise "An age of #{value} isn't valid!"
    else
      @age = value
    end
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def report_age
    return @report_age = 5
    puts "#{@name} is #{@age} years old."
  end

end

puts "-"*10 + 'dog' + "-"*10
joey = Dog.new
joey.name = "Joey"
puts joey.name
# puts "#{joey.name}"
joey.age = 1
joey.report_age
puts "-"*10 + 'dog' + "-"*10


class Mage

  attr_accessor :name, :spell

  # Creating an instance variable on the class object
  @name02= 'name02'
  puts @name02

  def set_name01
    @name01 = 'Sandy'
  end

  def enchant
    x = 1
    puts "#{@name} casts #{@spell}!"
    puts "#{@name01} at the top for name01."
    puts "#{@name02} at the top for name02."
  end

end

class Robot
  def head
    @head
  end

  def arms=(value)
    @arms = value
  end

  attr_reader :legs, :body

  attr_writer :eyes

  attr_accessor :feet

  def assemble
    @legs = "RubyTek Walkers"
    @body = "BurlyBot Frame"
    @head = "SuperAI 9000"
  end

  def diagnostic
    puts @arms
    puts @eyes
  end
end

robot = Robot.new

robot.assemble

robot.arms = "MagGrip Claws"
robot.eyes = "X-Ray Scopes"
robot.feet = "MagGrip Boots"

puts robot.head
puts robot.legs
puts robot.body
puts robot.feet
robot.diagnostic
print '-'*10

