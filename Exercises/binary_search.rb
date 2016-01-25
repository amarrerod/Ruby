

=begin Write a program that implements a binary search algorithm.

    Searching a sorted collection is a common task. A dictionary is a sorted list of word definitions. 
    Given a word, one can find its definition. A telephone book is a sorted list of people's names, addresses, and telephone numbers. 
    Knowing someone's name allows one to quickly find their telephone number and address.

    If the list to be searched contains more than a few items (a dozen, say) a binary search will require far fewer comparisons than a linear search, 
    but it imposes the requirement that the list be sorted.

    In computer science, a binary search or half-interval search algorithm finds the position of a specified input value (the search "key") within an array sorted by key value.

    In each step, the algorithm compares the search key value with the key value of the middle element of the array.

    If the keys match, then a matching element has been found and its index, or position, is returned.

    Otherwise, if the search key is less than the middle element's key, then the algorithm repeats its action on the sub-array to the left of the middle element or, if the search key is greater, on the sub-array to the right.

    If the remaining array to be searched is empty, then the key cannot be found in the array and a special "not found" indication is returned.

    A binary search halves the number of items to check with each iteration, so locating an item (or determining its absence) takes logarithmic time. A binary search is a dichotomic divide and conquer search algorithm.
=end

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

#Definimos un metodo para que el usuario introduzca un valor
def interfaz
    
    #Primero creamos un array aleatorio de 30 valores
        array  = Array.new(30)
        array.each_with_index do |value,i|
            array[i] = rand(100)
        end
    #Lo ordenamos --> Premisa necesaria para la búsqueda binaria
        ordenado = array.sort

    valor = -1
    while valor == -1 do
        puts("Introduzca un valor a buscar en el array: ")
        valor = gets.chomp.to_i
        puts(binarySearch(ordenado,valor,0,29))
        puts("Array en el que se ha realizado la búsqueda: #{ordenado}")
    end
end

interfaz