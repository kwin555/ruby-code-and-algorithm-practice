def nthterm(first, term_number, constant)
  sequence_array = []
  sequence_array[0] = first
  for current_index in 1..term_number do
    sequence_array[current_index] = sequence_array[current_index - 1] + constant
 end
 return sequence_array[-1]
end

nthterm(1,2,3)
