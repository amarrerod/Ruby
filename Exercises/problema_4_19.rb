

bloque = ->(x) do
    
    array = Array.new
    while array.length < 10 do
        if (((x*x)%5)==0)
            array << x
        end
            x+=1
    end
        r = array.inject(0) do |acc,value|
            acc + value
        end
        r
end
puts(bloque.call(1))