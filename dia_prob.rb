#input
#objectives stay readable and clear
sample_input = "3
11 2 4
4 5 6
10 8 -12 "
expected_output = 15

def parse_input(string_input) # translating what you are getting
  lines = string_input.split(/[\r\n]+/)
  lines.shift # throw away first line
  lines.map do |line| # returns the outer array
    line.split.map(&:to_i)
  end
end

def diagonal_difference(square_matrix)
  size_of_matrix = square_matrix.size
  primary_diagonal = 0.upto(size_of_matrix - 1).map do |index|
    square_matrix[index][index]
  end
  sum_of_primary_diagonal = primary_diagonal.inject(0, &:+)
  x = size_of_matrix - 1
  secondary_diagonal = 0.upto(size_of_matrix - 1).map do |y|
      number = square_matrix[y][x]
      x -= 1
      number
    end
  sum_of_secondary_diagonal = secondary_diagonal.inject(0, &:+)
  (sum_of_secondary_diagonal - sum_of_primary_diagonal).abs
end
square_matrix = parse_input(sample_input)
puts square_matrix.inspect
output = diagonal_difference(square_matrix)

puts expected_output

if output == expected_output
  puts "hey it works! the output is #{output}"
else
  puts 'something is wrong'
end
