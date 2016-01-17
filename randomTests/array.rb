

foo = %w{ant bee dog elk cat horse shark}
p(foo)
p(foo.inspect)
foo.map do |x|
    puts x
end