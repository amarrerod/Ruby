
#Diseñar un programa en donde se capture un arreglo (o lista) de 5 elementos y 2 números enteros, el programa
#tendrá que indicar alguno de los siguientes casos:
# => Los dos números enteros capturados se encuentran en el arreglo
# => Solo el primer numero capturado se encuentra en el arreglo
# => Solo el segundo numero capturado se encuentra en el arreglo
# => Ninguno de los dos números se encuentra en el arreglo


#Primero generamos un array aleatorio de 30 elementos

array = Array.new(30)
array.each_with_index do |value,i|
            array[i] = rand(100)
            end


#Pedimos los dos valores

def getValor
    puts("Introducir un valor: ")
    valor = gets.chomp.to_i
    valor
end

def incluidos(array,a,b)
    if array.include?(a) &&
        array.include?(b)
            return "Los dos elementos están incluidos"
    end
    
        if (array.include?(a) == true &&
            array.include?(b) == false)
                return "Solo tenemos a A"
            else
                if (array.include?(a)==false &&
                    array.include?(b)==true)
                        return "Tiene a B"
                    else
                        if (array.include?(a) == false &&
                            array.include?(b) == false)
                                return "No incluye a ninguno de los dos"
                        end
                end
        end
end

a,b = getValor, getValor
#Imprimimos el array
p(array)
puts(incluidos(array,a,b))



