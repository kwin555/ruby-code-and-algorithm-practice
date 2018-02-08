# Given a non-negative integer, return an array / a list of the individualdigits
# in order.
def digtize(number)
  number.to_s.split('').map(&:to_i) if number >= 0
end
