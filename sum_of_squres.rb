def square_sum(numbers)
  numbers.inject(0) { |sum, number| sum + (number ** 2)}
end


puts square_sum([5, 5, 5])
