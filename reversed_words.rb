def reverse_sentence(input_sentence)
  input_sentence.split(' ').reverse.join(' ')
end

puts reverse_sentence("The greatest victory is that which requires no battle")
