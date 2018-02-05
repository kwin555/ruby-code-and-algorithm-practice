def unique(input_list)
  seen = {}
  output_list = []
  input_list.each do |value|
    if seen[value] != true
      seen[value] = true
      output_list << value
    end
  end
  output_list
end

puts unique([1, 5, 2, 0, 2, -3, 1, 10]).inspect
