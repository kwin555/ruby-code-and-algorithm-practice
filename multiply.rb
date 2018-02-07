def multiply(number1, number2)
  if number1.is_a?(Integer) && number2.is_a?(Integer)
    number1 * number2
  else
    puts 'Give inputs that are integers'
  end
end
