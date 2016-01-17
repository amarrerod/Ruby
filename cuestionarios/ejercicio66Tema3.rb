


class AClass
    def m
        'method m'
    end
end

obj = AClass.new

def obj.s1
    'method s1'
end

class << obj
    def s2
        'method s2'
    end
end

puts obj.m
puts obj.s1
puts obj.s2