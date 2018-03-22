require 'prime'

def step(step, left_end, right_end)
  prime_array = []
  Prime.each(right_end) do |prime|
    prime_array << prime
  end
  prime_array.delete_if { |num| num < left_end }
  prime_array.each do |prime_num|
    prime_array.each do |prime_num_two|
      return [prime_num, prime_num_two] if prime_num_two - prime_num == step
    end
  end
end