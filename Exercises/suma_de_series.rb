
=begin

    Write a program that, when given a string of digits, can calculate the largest product for a series of consecutive digits of length n.

    For example, for the input '0123456789', the largest product for a series of 3 digits is 504 (7 * 8 * 9), and the largest product for a series of 5 digits is 15120 (5 * 6 * 7 * 8 * 9).

    For the input '73167176531330624919225119674426574742355349194934', the largest product for a series of 6 digits is 23520.

=end


def getCadena
    puts("Introduzca la cadena de digitos: ")
    cadena = gets.chomp
    cadena
end

def getLongitudSeries
    puts("Longitud de las series: ")
    valor = gets.chomp.to_i
    valor
end


bloque = ->(cadena,rango) do
        
            raise RuntimeError, 'Rango >= String.size' if rango > cadena.length
            i = 0
            max = 0
        
            while i+rango <= cadena.length do
                suma = 1
                #Buscamos los valores
                for j in i...(i+rango) do
                   suma *= cadena[j].to_i
                end
                #Incrementamos el valor de i
                i += 1        
                #Actualizamos el valor de max
                if (suma > max)
                    max = suma
                end
            end
            max
end

puts(bloque.call(getCadena,getLongitudSeries))



##################################################3

bloque = ->(string, rango = 1) do
        raise RuntimeError, 'Out of range' if rango > string.length
        max = 0
        for i in 0..(string.length-rango) do
            suma = 1
            for j in i...(i+rango) do
                suma *= string[j].to_i
            end
            if (suma > max)
                    max = suma
            end
        end
        max
end

puts(bloque.call('73167176531330624919225119674426574742355349194934',6))