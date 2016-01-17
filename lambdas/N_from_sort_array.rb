
require './m_numeros.rb'
#Escribir un programa Ruby que dado un Array nos muestre los N menores elementos 

#Definimos un metodo que nos crea una funcion (clausura) para obtener los elementos desde 0 a N
def defineN(n)
    (->(array){array[0...n]})
end

#Creamos el array
array = Array.new
#Lo inicializamos con 10 valores aleatorios
for i in 0...10 do
    array[i] = Numeros::Aleatorio.new.random
end

#Ahora ordenamos el array
arrayOrdenado = array.sort
#Los 5 menores son
fiveMin = defineN(5)
resultado = fiveMin.call(arrayOrdenado)
puts("Array Original: #{array}")
puts("Array Ordenado: #{arrayOrdenado}")
puts("Los 5 Menores son: #{resultado}")

