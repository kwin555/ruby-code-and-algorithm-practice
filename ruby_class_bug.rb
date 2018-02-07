class Person
  attr_reader :first_name, :last_name, :age
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end
end
person = Person.new('Yukihiro', 'Matsumoto', 47)
puts person.full_name
puts person.age
