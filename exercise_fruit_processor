# Instruction:
# create a fruit processor to process Apple and Banana, requirement is below:
# 1. they all have a property like color, weight
# 2. they all have method Process() and output is AppleJuice and BananaJuice and BlendJuice
# 3. they need to be initialized in the very beginning
# 4. there is a input for different fruits, but need to output a juice with
# 4.1 different weight (sum of existing fruit)
# 4.2 different color (red, yellow or blending)



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
end

class Juice
  attr_accessor :color, :weight
  def initialize(color, weight)
    self.color = color
    self.weight = weight
  end
end

class JuiceMachine

  def repeat_input_wrapper
    fruits = []
    repeat_input(fruits)
    return fruits
  end

  def repeat_input(fruits)

    print "Input fruit: "
    name, color, weight = gets.chomp.split
    weight = weight.to_i

    if name == "done"
      # do nothing
    else
      fruit = Fruit.new(name, color, weight)
      fruits.push(fruit)
      repeat_input(fruits)
    end

  end

  def generate_juice(fruits)

    puts "Juice is coming.... in 3 seconds..."

    color = ''
    weight = 0

    fruits.each do |fruit|

      color = deal_with_color(fruit, color)
      weight = deal_with_weight(fruit, weight)
    end

    Juice.new(color, weight)
  end

  def deal_with_color(fruit, color)
    if color == ''
      color = fruit.color
    elsif color == fruit.color
      # do nothing
    else
      color = 'blending'
    end
  end

  def deal_with_weight(fruit, weight)
    weight += fruit.weight
  end

  def check_juice(juice)
    print "#{juice.weight}g juice with #{juice.color} color is ready to collect."
  end

  def make_juice
    puts "Welcome to use 'Juice Machine'!"
    puts "Please put fruit(name color weight) into the juice machine (input `done` to complete it). "

    fruits = repeat_input_wrapper
    juice = generate_juice(fruits)
    check_juice(juice)
  end

  public :make_juice
  private :repeat_input_wrapper, :repeat_input, :generate_juice, :deal_with_color, :deal_with_weight, :check_juice

end

machine = JuiceMachine.new
machine.make_juice