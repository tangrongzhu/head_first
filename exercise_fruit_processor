# create a fruit processor to process Apple and Banana, requirement is below:
# 1. they all have a property like color, weight
# 2. they all have method Process() and output is AppleJuice and BananaJuice and BlendJuice
# 3. they need to be initialized in the very beginning
# 4. there is a input for different fruits, but need to output a juice with
# 4.1 different weight (sum of existing fruit)
# 4.2 different color (red, yellow or blending)
#
#

class Fruit

  def self.apple(weight)
    Fruit.new("Apple", "Red", weight)
  end
  def self.banana(weight)
    Fruit.new("Banana", "Yellow", weight)
  end

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

  attr_accessor :fruit1, :fruit2

  def initialize(fruit1, fruit2)
    self.fruit1 = fruit1
    self.fruit2 = fruit2
    self.process
    self.print_juice
  end

  def process

    if fruit1.color == fruit2.color
     @juice_color = fruit1.color
    else
      @juice_color = "blending"
    end

    @juice_weight = fruit1.weight + fruit2.weight

  end

  def print_juice
    puts "Juice process with fruits #{fruit1.name} and #{fruit2.name}"
    puts "Outcome juice color is #{@juice_color}, and weight is #{@juice_weight}"
  end

end

fruit1 = Fruit.new("Apple","Red",0.5)
fruit2 = Fruit.new("Banana","yellow",0.5)
juice = JuiceMachine.new(fruit1, fruit2)


fruit3 = Fruit.apple(1)
fruit4 = Fruit.banana(1)
juice = JuiceMachine.new(fruit3, fruit4)
