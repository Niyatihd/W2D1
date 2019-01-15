require_relative "employee.rb"

class Manager < Employee
  attr_reader :employees

  def initialize(name, title, salary, boss)
    super
    @employees = []
  end

  def add_employee(name)
    @employees << name
  end

  def sum_employee_salary
    salary_sum = 0

    employees.each do |employee|
      if employee.is_a?(Manager)
        salary_sum += employee.sum_employee_salary + employee.salary
      else
        salary_sum += employee.salary
      end
    end
    
    salary_sum
  end

  def bonus(multiplier)
    sum_employee_salary * multiplier
  end

end

if __FILE__ == $PROGRAM_NAME
  # steve = Manager.new("Steve", "Manager", 50000, "Bud")
  # drew = Manager.new("Drew", "Manager", 30000, steve)
  # andy = Employee.new("Andy", "Employee", 20000, drew)
  # andrew = Employee.new("Andrew", "Employee", 30000, steve)
  # steve.add_employee(drew)
  # steve.add_employee(andrew)
  # drew.add_employee(andy)
  # p steve.bonus(2)
  # p drew.bonus(1)
  # p drew.boss.name

  ned = Manager.new("Ned", "Founder", 1000000, nil)
  darren = Manager.new("Darren", "TA Manager", 78000, ned)
  shawna = Employee.new("Shawna", "TA", 12000, darren)
  david = Employee.new("David", "TA", 10000, darren)
  ned.add_employee(darren)
  darren.add_employee(shawna)
  darren.add_employee(david)
  p ned.bonus(5) # => 500_000
  p darren.bonus(4) # => 88_000
  p david.bonus(3) # => 30_000
end