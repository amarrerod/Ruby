
=begin

Write a program that, given a number, can find the sum of all the multiples of particular numbers up to but not including that number.

If we list all the natural numbers up to but not including 20 that are multiples of either 3 or 5, we get 3, 5, 6 and 9, 10, 12, 15, and 18.

The sum of these multiples is 78.

Write a program that can find the sum of the multiples of a given set of numbers. If no set of numbers is given, default to 3 and 5.

=end

def getValor
    puts("Introduzca el valor tope: ")
    valor = gets.chomp.to_i
    valor
end


closure = ->(x, sum=0) do 
        array = []
        #Con tres puntos excluimos el tope
        for i in 1...x do
            if ((i%3 == 0) ||
                (i%5 == 0))
                    array << i
                    sum +=i
            end
        end
        [array,sum]
    end

valor = getValor
#Realizamos el calculo
resultado = closure.call(valor)
puts("El valor del la suma es: #{resultado[1]}")
puts("Los numeros utilizados son: #{resultado[00]}")



#######################################

bloque = ->(num, x=3, y=5) do
        
        suma = 0
        for i in 0...num do
            if (((i%x)==0)||
                ((i%y)==0))
                    suma +=i
            end
        end
        suma
end

puts(bloque.call(20))