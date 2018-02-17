class Sleigh
  def authenticate(name, password)
    true if name == 'Santa Claus' && password == 'Ho Ho Ho!'
    false
  end
end
