def no_odds(values)
  puts values.map { |number| number if number.even?}.inspect
end
no_odds([0,1,2,3])
