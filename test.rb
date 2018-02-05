def high_and_low(numbers)
 
   puts numbers.split(" ").map(&:to_i).minmax.reverse.join(" ")
end

s_n = "4 5 29 54 4 0 -214 542 -64 1 -3 6 -6"

high_and_low(s_n)