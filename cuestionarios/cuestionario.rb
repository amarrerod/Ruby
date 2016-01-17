  l = lambda {@l = 1}
  def m(p)
    @l = 2
    p.call 
  end
  m(l)
  puts l[:l]