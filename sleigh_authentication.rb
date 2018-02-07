class Sleigh
  def authenticate(name, password)
    return true if name == 'Santa Claus' && password == 'Ho Ho Ho!'
    return false
  end
end
