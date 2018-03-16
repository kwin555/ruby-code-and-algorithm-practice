def find_missing_letter(arr)
  first = arr.first
  last = arr.last
  all_letters_array = []
  first.upto(last) { |char| all_letters_array << char } 
  # (all_letters_array - arr).join('')
  (all_letters_array - arr)[0]
end

array = ["a","b","c","d","f"]
puts find_missing_letter(array).inspect