class Employee

  attr_reader :name

  def name=(value)
    if value == ""
      raise "Name cannot be blank."
    else
      @name = value
    end
  end

  def initialize(name = "Anonymous")
    self.name = name
  end

  def print_name
    puts "Name: #{name}"
  end
end

class SalariedEmployee < Employee
  attr_reader :salary

  def salary=(value)
    if value < 0
      raise "#{value} of salary is invalid!"
    else
      @salary = value
    end
  end

  def initialize(name, salary = 0.00)

    super(name)
    self.salary = salary

  end

  def print_pay_stub
    print_name
    pay_for_period = (salary / 365.0) * 14
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end
end

class HourlyEmployee < Employee
  attr_reader :hourly_wage, :hourly_per_week

  def hourly_wage=(value)
    if value < 0
      raise "#{hourly_wage} of hourly wage is invalid."
    else
      @hourly_wage = value
    end
  end

  def hourly_per_week=(value)
    if value < 0
      raise "value #{hourly_per_week} is invalid."
    else
      @hourly_per_week = value
    end
  end

  def initialize(name, hourly_wage = 0.0, hourly_per_week = 0.0)

    super(name)
    self.hourly_wage = hourly_wage
    self.hourly_per_week = hourly_per_week
  end

  def print_pay_stub
    print_name
    pay_for_period = hourly_per_week * hourly_wage * 2
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end

end

salaried_employee = SalariedEmployee.new("Rongzhu", 50000)
salaried_employee.print_pay_stub

hourly_employee = HourlyEmployee.new( 'kkk', 16,10)
hourly_employee.print_pay_stub

