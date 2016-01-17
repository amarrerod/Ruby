

class A
    @value = 1
    def self.value
        @value
    end
end

puts A.value

class B < A
    @value = 2
end

puts A.value
puts B.value

class C < A; @value = 3; end
    
puts B.value
puts C.value