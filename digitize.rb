# Given a non-negative integer, return an array / a list of the individual digits
# in order.
def digtize(number)
  number.to_s.split('').map(&:to_i) if number >= 0
end

puts digtize(9675309).inspect
