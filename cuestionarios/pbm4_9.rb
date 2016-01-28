

# => Considerese el siguiente código Ruby
# =>array = [1,2,3,4]
# =>array.collect! do |n|
# =>n ** 2
# =>end
# =>puts array

# Escriba un metodo denominado iterador! que se comporte de la 
# misma manera utilizando yield

array = [1,2,3,4]
class Array
def iterador!()
    self.each_with_index do |value, key|
        self[key] = yield(value)
    end
    self
end

# Repita el apartado anterior pero esta vez usando un objeto Proc

def iterador2!(bloque)
    self.each_with_index do |value,key|
        self[key] = bloque.call(value)
    end
    self
end
end

array.iterador!{|x| x**2}
p(array)
arrayB = [1,2,3,4]
arrayB.iterador2!((-> x{x**2}))
p(arrayB)