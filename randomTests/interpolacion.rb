
s = 'message 1'
r = 'message 2'

def s
    'message from s'
end

def r
    'message from r'
end

def t(x)
    "#{x}"
end

puts(r) # =>'message 2'
puts r # => 'message 2'
puts r() # => 'message from r'
puts(t(s))# => 'message 1'
puts(t(s()))# => 'message from s'