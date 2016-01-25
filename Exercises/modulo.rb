


#Modulo de Utilidades

module Utiles

#Metodo que devuelve un lambda que a partir de una cadena de texto
#devuelve su acrónimo
def getAcronimo 
    clausura = ->(string)do
                
            array = string.split(" ")
            cadena = String.new
            array.each do |value|
                cadena << "#{value[0].capitalize}"
            end
            cadena
    end
end

#Metodo que devuelve una clausura que a partir de una cadena de digitos
#devuelve el valor máximo de la suma del producto de los números consecutivos
#dentro del rango que recibe como parámetro
def getMaxSeries
    
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

end

#Metodo para implementar la busqueda binaria en el array
def binarySearch(array,value,i,j)
    
    if (i>j)
        return "Not Found"
    end
    centro = ((i+j)/2)
    #El elemento esta justo en el centro el array
    if (value == array[centro])
        return "Found"
    else
        #En el caso de que el elemento sea más grande que el elemento central
    if (value > array[centro])
            #Buscamos en la mitad superior
            binarySearch(array,value,centro+1,j)
        else
            if (value <= array[centro])
                #Buscamos en la mitad inferior
                binarySearch(array,value,i,centro-1)
            else
                return "Not Found"
            end
    end
    end
end

#Metodo que devuelve una clausura que al pasarle una cadena y un rango
#muestra todas las posibles combinaciones que hay en esa cadena con ese
#rango entre elementos consecutivos
def getOptionsInRange  

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

end


# a program that, given a number, can find the sum of all the multiples of particular numbers up to but not including that number.
# Write a program that can find the sum of the multiples of a given set of numbers. If no set of numbers is given, default to 3 and 5.
# Returns an array with the values and the sum
def getSumOfMultiples

    closure = ->(x, sum=0,i = 3, j = 5) do 
        array = []
        #Con tres puntos excluimos el tope
        for l in 1...x do
            if ((l%i == 0) ||
                (l%j == 0))
                    array << l
                    sum +=l
            end
        end
        [array,sum]
    end
end

#Dados dos números enteros positivos a<=b, generar
#la lista de los dobles de todos los impares x tales
# que a <= x <= b
#Devuelve una clausura que realiza la operacion tras
#recibir los valores 
def dobles

bloque = ->(x,y)do
            aux = x
            array = Array.new
            until aux > y do
                if aux.even? == false
                    array << aux**2
                end
                aux += 1 #until
            end
            array
        end
end


end