
#Creamos un array
array = [1,2,3,4,5]
#Lo congelamos
array.freeze
#Clonamos el objeto, tambien se copia su estado
arrayClonado = array.clone
#Lo duplicamos, no se copia el estado
arrayDuplicado = array.dup
puts("#{array}")
puts(array.frozen?)
puts("#{arrayClonado}")
puts(arrayClonado.frozen?)
puts("#{arrayDuplicado}")
puts(arrayDuplicado.frozen?)
