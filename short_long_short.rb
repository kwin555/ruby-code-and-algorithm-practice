# Given 2 strings, a and b, return a string of the form short+long+short, with the
# shorter string on the outside and the longer string on the inside. The strings
# will not be the same length, but they may be empty (length0).

def solution(word1, word2)
  word1 + word2 + word1 if word1.size < word2.size
  word2 + word1 + word2
end
