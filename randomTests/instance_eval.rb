

# =>Creamos una clase A
class A
end
# =>Creamos un objeto de la clase String con codigo Ruby
x = 'def metodo; "a_method"; end'
# =>Añadimos el metodo como metodo de clase de A
A.instance_eval(x)
puts(A.metodo)
# =>Creamos otro objeto de la clase String con codigo Ruby
y = 'def metodo; "metodo_de_instancia"; end'
# =>Lo incluimos como  metodo de instancia de la clase A
A.class_eval(y)
puts(A.new.metodo)