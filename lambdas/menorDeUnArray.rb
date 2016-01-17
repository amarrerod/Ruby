

#Escribir un programa Ruby que devuelve el menor elemento de un array (como min)
require './m_numeros.rb'

#Creamos el array
array = Array.new
#Lo inicializamos con 10 valores aleatorios
for i in 0...10 do
    array[i] = Numeros::Aleatorio.new.random
end


def minArray(array)
    stable = SortedArray.new(array)
    return stable[0]
end

puts(minArray(array))