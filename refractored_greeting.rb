# TODO: This method needs to be called multiple times for the same person (myName
# It would be nice if we didnt have to always pass in myName every time we need
# to great someone.
class Person
  attr_accessor :my_name

  def initialize(my_name)
    @my_name = my_name
  end

  def name
    @my_name
  end

  def greet(your_name)
    "Hello #{your_name}, my name is #{@my_name}"
  end
end
joe = Person.new('Joe')
puts joe.name
