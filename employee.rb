
class Employee

  attr_accessor :name,:position,:id

  def initialize(name,position,id)
    @name = name
    @position = position
    @id = id
  end

  def to_s
    "Name: #{@name}, Position: #{position}, ID: #{id}"
  end

end
