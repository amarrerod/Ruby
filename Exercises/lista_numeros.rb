

#Dados dos números enteros positivos a<=b, generar
#la lista de los dobles de todos los impares x tales
# que a <= x <= b

def getValor
    puts("Introducir valor: ")
    valor = gets.chomp.to_i
        raise RuntimeError, 'No positivo' if valor < 0
    valor
end

def checkValores(a,b)
    if a >= b
        raise RuntimeError, 'a >= b'
    end
end

#Tomamos los valores
a = getValor
b = getValor

#Comprobamos que se cumple a <= b
checkValores(a,b)

#Creamos  un lambda que nos conforme el array
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

array = bloque.call(a,b)
p(array)

