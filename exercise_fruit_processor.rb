# create a fruit processor to process Apple and Banana, requirement is below:
# 1. they all have a property like color, weight
# 2. they all have method Process() and output is AppleJuice and BananaJuice and BlendJuice
# 3. they need to be initialized in the very beginning
# 4. there is a input for different fruits, but need to output a juice with
# 4.1 different weight (sum of existing fruit)
# 4.2 different color (red, yellow or blending)
#
#
#
class Fruit

  attr_reader :name, :color, :weight

  def name=(name)
    if name == ""
      raise "fruit name cannot be blank."
    else
      @name = name
    end
  end

  def color=(color)
    if color == ""
      raise "fruit color cannot be blank."
    else
      @color = color
    end
  end

  def weight=(weight)
    if weight < 0
      raise "value of weight is invalid."
    else
      @weight = weight
    end
  end

  def initialize(name, color, weight)
    self.name = name
    self.color = color
    self.weight = weight
  end

  def print_fruit_info
    puts "Fruit Name: #{name}"
    puts "The fruit is '#{color}' color and weight is #{weight}."
  end
end

class JuiceMachine

  attr_accessor :fruit, :juice, :color, :weight

  def initialize(fruit, juice)
    self.fruit = fruit
    self.juice = juice
  end

  def process

    @weight = juice.weight + fruit.weight

    if juice.color == fruit.color
      @color = fruit.color
    else
      @color = "blending"
    end

  end

  def print_juice
    puts "Outcome juice color is #{@color}, and weight is #{@weight}"
  end

end

puts "Welcome to use 'Juice Machine'!"

more_fruit = true
fruit_number = 0

while more_fruit
  print "Please input the fruit name: "
  name = gets.chomp
  puts "What's color of the fruit?"
  color = gets.chomp
  puts "What's weight of the fruit?"
  weight = gets.to_i

  fruit = Fruit.new(name, color, weight)
  # fruit = Fruit.new('Apple', 'Red', 1)

  fruit_number += 1

  print "input more fruits? Press any key to continue, or type 'DONE' if finished."
  input = gets.chomp

  if fruit_number == 1
    juice_weight = fruit.weight
    juice_color = fruit.color
    juice = fruit
  else
    juice = JuiceMachine.new(fruit, juice)
    juice.process
  end

  if input == "DONE"
    more_fruit = false
  end

end

unless more_fruit

  if fruit_number == 1
    puts "Outcome juice color is #{juice_color}, and weight is #{juice_weight}"
  else
    juice.print_juice
  end

end

