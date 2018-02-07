def calc_mean(input)
  if !input.is_a?(Array)
    0
  elsif input.empty?
    0
  else
    (input.inject(0) { |sum, number| sum + number }) / input.size.to_f
  end
end

puts calc_mean([15, 30, 60, 120, 240])
