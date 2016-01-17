# =>19. Escriba un programa ruby haciendo uso de funciones de orden superior que calcule la suma de
# =>los diez primeros que son multiplos de cinco.



def realizarCalculo(a_lambda,b_lambda)

    b_lambda.call(a_lambda.call)
    
end

multCinco = ->()do
        array = []
        for i in 1...10 do
            array << i*5
        end
        array
end

sum = ->(array){ total = 0; array.each do |num| total = total+num end; total}

puts "La suma realizada es: #{realizarCalculo(multCinco,sum)}"



valores = (1..Float::INFINITY).lazy.collect{|x| x * 5}.first(10)
p valores