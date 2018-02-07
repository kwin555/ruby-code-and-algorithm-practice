def grader(score)
  return 'F' if score > 1 || score < 0.6
  return 'A' if score >= 0.9
  return 'B' if score >= 0.8
  return 'c' if score >= 0.7
  return 'D' if score >= 0.6
end

puts grader(0.65).inspect
