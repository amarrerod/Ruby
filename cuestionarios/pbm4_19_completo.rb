
# =>19. Escriba un programa ruby haciendo uso de funciones de orden superior que calcule la suma de
# =>los diez primeros naturales cuyos cuadrados son multiplos de cinco.


sum = ->(array)do 
    total = 0
    array.each do |num|
        total = total + num
    end
    total
end

def sumNaturales(block)
    block.call(@valores)
end
@valores = (1..Float::INFINITY).lazy.collect{|x| x*5}.first(10)
puts sumNaturales(sum)