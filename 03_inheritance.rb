class Vehicle

  attr_accessor :odometer, :gas_used

  def accelerate
    puts "Floor it!"
  end

  def sound_horn
    puts "Beep! Beep!"
  end

  def steer
    puts "Turn front 2 wheels."
  end

  def mileage
    return @odometer / @gas_used
  end
end

class Car < Vehicle
end

class Truck < Vehicle

  attr_accessor :cargo

  def load_bed(contents)
    puts "Securing #{contents} in the truck bed."
    @cargo = contents
  end
end

class Motorcycle < Vehicle
end

truck = Truck.new
truck.accelerate
truck.steer
truck.load_bed("259 bouncy balls")
puts "The truck is carrying #{truck.cargo} ."

car = Car.new
car.odometer = 11432
car.gas_used = 366
puts "Lifetime MPG: "
puts car.mileage

# Instance variables belong to the object, not the class!
class Person

  def name=(new_value)
    @storage = new_value
  end

  def name
    @storage
  end

end

class Employee < Person

  def salary=(new_value)
    @storage = new_value
  end

  def salary
    @storage
  end
end

# Animal class hierarchy
class Animal

  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name cannot be blank!"
    else
      @name = value
    end
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    else
      @age = value
    end
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}"
  end

  def report_age
    puts "#{@name} is #{@age} years old!"
  end
end

class Dog < Animal

end

# Overriding a method in the subclasses
class Bird < Animal

  def talk
    puts "#{@name} says Chirp! Chirp!"
  end
end

class Cat < Animal

  def talk
    puts "#{@name} says Meow!"
  end
end

# get at the overridden method with 'super' keyword
# 'super' makes a call to a method of the same name on the superclass
# the calls "super" and "super()" are not the same.
#  'super' calls the overridden method with the same arguments the overriding method received.
# 'super()' calls the overridden method with no arguments, even if the overriding method did receive arguments.

class Armadillo < Animal

end