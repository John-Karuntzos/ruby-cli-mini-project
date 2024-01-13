require_relative "employee"

class Manifest

  def initialize
    @employees = []
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
    print "Enter the Employee's name: "
    name = gets.chomp
    print "Enter the Employee's position: "
    position = gets.chomp
    id = rand(1000..9999).to_s
    @employees.push(new Employee(name,position,id))
    puts "Employee Added Succesfully!"
  end

  def delete_employee

  end

  def print_manifest
    puts "Employee Manifest:"
    @employees.each do |employee|
      puts employee
    end
  end


end
