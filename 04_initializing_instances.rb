class Employee

  attr_reader :name, :salary

  def name=(name)
    if name ==""
      raise "Name cannot be blank!"
    else
      @name = name
    end
  end

  def salary=(value)
    if value < 0
      raise "#{value} of salary is invalid!"
    else
      @salary = value
    end
  end

  # Ruby calls the initialize method on new objects after they're created.
  # Any arguments to the class new method are passed on to initialize.
  # using optional parameters with initialize, when omit an argument, we'll get the default value
  # call other methods on the same instance with 'self' keyword, it refers to the current object
  # you have to include the self keyword when calling attribute writer methods, or Ruby will mistake the = for a variable assignment.
  def initialize(name = "Anonymous", salary = 0.00)
    self.name = name
    self.salary = salary
  end

  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = (@salary/365.0)*14
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end

end

employee = Employee.new("Kara Byrd", 4500)
# employee.name = ""
# employee.salary = 45000
employee.print_pay_stub
employee = Employee.new("kkk",-999)
employee.print_pay_stub

# Format sequence width with floating-point numbers
def test_format(format_string)
  print "Testing '#{format_string}': "
  puts format(format_string,12.3456)
end

test_format("%7.3f")
test_format("%.1f")

class Car

  def initialize(engine)
    @engine = engine
  end

  def rev_engine
    @engine.make_sound
  end
end

class Engine

  def initialize(sound = "Vroom!")
    @sound = sound
  end

  def make_sound
    puts @sound
  end
end

engine = Engine.new
car = Car.new(engine)
car.rev_engine