class Dog
  attr_reader :bark, :howl
  def initialize(initial_bark, initial_howl)
    if initial_howl.is_a?(String) && initial_bark.is_a?(String)
      @bark = initial_bark
      @howl = initial_howl
    else
      puts 'invalid data type, forcing data type to string'
      @bark = initial_bark.to_s
      @howl = initial_howl.to_s
    end
  end

  def dog_bark
    i = 0
    while i < 5
      puts @bark
      i += 1
    end
  end

  def dog_howl
    puts @howl
  end
end

dog = Dog.new('woof', 'AOOOOOOOOOOO')
puts dog.dog_bark
puts dog.dog_howl
