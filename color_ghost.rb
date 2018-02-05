class Ghost
  # your code goes here
  def color
    color_storage = %w[white yellow purple red]
    color_storage[rand(color_storage.size)]
  end
end
ghost = Ghost.new
puts ghost.color
