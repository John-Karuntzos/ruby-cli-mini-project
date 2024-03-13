require_relative "employee"

class Manifest

  def initialize
    @employees = []
  end

  def get_employees
    return @employees
  end

  def run
    loop do

      puts "\n"
      puts "You have #{@employees.size.to_s} in the manifest.\n"
      puts "1: Add an Employee"
      puts "2: Remove an Employee"
      puts "3: List all Employees"
      puts "4: Exit"
      print "Choose an option: "
      action = gets.chomp

      case action
      when "1"
        add_employee
      when "2"
        delete_employee
      when "3"
        print_manifest
      when "4"
        puts "Have a nice day!"
        break
      else
        puts "Invalid Input"
      end
    end
  end

  private

  def add_employee
    print "\nEnter the Employee's name: "
    name = gets.chomp
    print "Enter the Employee's position: "
    position = gets.chomp
    id = rand(1000..9999).to_s
    while @employees.any? {|employee| employee.id == id}
      id = rand(1000..9999).to_s
    end
    @employees.push(Employee.new(name,position,id))
    puts "Employee Added Succesfully!"
  end

  def delete_employee
    print "\nWhat is the id of the employee: "
    id = gets.chomp.to_s
    index = @employees.index {|employee| employee.id == id}
    if index
      @employees.delete_at(index)
      puts "Employee Deleted Succesfully\n"
    else
      puts "No employee found with id: #{id}"
    end
  end

  def print_manifest

    if @employees.size == 0
      puts "\nManifest is Empty!\n"
    else
      puts "\n--------------------\n"
      puts "\nEmployee Manifest:\n"
      @employees.each do |employee|
        puts employee
      end
      puts "\n--------------------\n"
    end
  end


end
