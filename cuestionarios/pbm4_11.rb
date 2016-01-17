
def multiplier(n)
    lambda do |*arr|
        arr.collect {|i| i*n }
    end
end

myMultiplier = multiplier(2)
array = [1,2,3,4]
myMultiplier.call(array)
puts array