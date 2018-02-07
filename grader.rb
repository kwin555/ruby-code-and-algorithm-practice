def grader(score)
  'F' if score > 1 || score < 0.6
  'A' if score >= 0.9
  'B' if score >= 0.8
  'c' if score >= 0.7
  'D'
end
