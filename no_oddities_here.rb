def no_odds(values)
  even_aray = []
  values.each do |number|
    even_aray << number if number.even?
  end
  even_aray
end
