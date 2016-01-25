
# Codifica un programa en donde el usuario capture los valores de cuatro variables (a,b,c,d), si el valor de la variable a
# es diferente de 0, entonces se tendrá que calcular y mostrar el resultado de la siguiente formula:
#       ((a+b)/2)*(c*d/a))+1


def getValor
    puts("Introducir valor: ")
    valor = gets.chomp.to_i
    valor
end

def calculo(a,b,c,d)

    resultado = ((a+b)/2)
    resultado *=((c*d)/a)
    resultado +=1
    resultado
end
    
def checking (a)
    raise RuntimeError, 'A <= 0' if a <= 0
end

a,b,c,d = getValor, getValor, getValor, getValor
checking(a)
puts calculo(a,b,c,d)


