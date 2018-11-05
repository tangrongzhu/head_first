# instruction
# - create a class named JuiceMachine with public method make_juice(fruits) that return Juice
# - create a class named FruitsOrder with public method CreateFruits() that return Fruits and get input from user
# - create a class named JuiceMachineTester with a method MakeJuiceTest() that test the MakeJuice() method

class Fruit

  attr_accessor :name, :color, :weight

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

  attr_accessor :fruits

  def initialize(fruits)
    self.fruits = fruits
  end

  def make_juice
    # return juice
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

end

class FruitsOrder

  def create_fruits
    # return fruits
    # get input from user
    fruits = []
    input_fruit(fruits)
    return fruits
  end

  def input_fruit(fruits)

    print "Input fruit: "
    name, color, weight = gets.chomp.split
    weight = weight.to_i

    if name == "done"
      # do nothing
    else
      fruit = Fruit.new(name, color, weight)
      fruits.push(fruit)
      input_fruit(fruits)
    end
  end
end

class JuiceMachineTester

  def test_make_juice_with_one_fruit
    # test make_juice method
    fruit1 = Fruit.new("apple", "red", 1)
    fruits = [fruit1]
    real_juice = JuiceMachine.new(fruits).make_juice
    expected_juice = Juice.new("red", 1)
    verify_juice(expected_juice, real_juice)
    end

  def test_make_juice_with_two_fruit
    # test make_juice method
    fruit1 = Fruit.new("apple", "red", 1)
    fruit2 = Fruit.new("banana", "yellow", 1)
    fruits = [fruit1, fruit2]
    real_juice = JuiceMachine.new(fruits).make_juice
    expected_juice = Juice.new("blending", 2)
    verify_juice(expected_juice, real_juice)
  end

  def verify_juice(expectedJuice, realJuice)
    if expectedJuice.weight == realJuice.weight && expectedJuice.color == realJuice.color
      puts "juice verify pass."
    else
      puts "juice verify failed"
    end
  end

end



# fruits = FruitsOrder.new.create_fruits
# print "this is fruits : #{fruits}"
# puts fruits.inspect
# juice = JuiceMachine.new(fruits)
# juice.make_juice
test_juice = JuiceMachineTester.new
test_juice.test_make_juice_with_one_fruit
test_juice.test_make_juice_with_two_fruit