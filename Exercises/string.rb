
=begin
        Write a program that will take a string of digits and give you all the possible consecutive number series of length n in that string.
        
        For example, the string "01234" has the following 3-digit series:
        
        012
        123
        234
        And the following 4-digit series:
        
        0123
        1234
        And if you ask for a 6-digit series from a 5-digit string, you deserve whatever you get.

=end


def getCadena
    p("Introduzca la cadena: ")
    string = gets.chomp
    string
end

def getRango
    p("Introducir el rango de series: ")
    rango = gets.chomp.to_i
    rango
end

closure = ->(string, rango) do
                
            array = []    
            if (rango > string.length)
                return nil
            else
                i = 0
                while i+rango <= string.length
                    array << string[i,rango]
                    i +=1
                end
            end
            array
end

resultado = closure.call(getCadena,getRango)
p(resultado)