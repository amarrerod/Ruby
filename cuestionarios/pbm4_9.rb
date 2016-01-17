

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
    def iterador!
        self.each_with_index do |num,i|
           self[i] = yield(num)
        end
    end
end


# Repita el apartado anterior pero esta vez usando un objeto Proc

class Array
    def iterador!(block) #Pasamos el bloque como parametro
        self.each_with_index do |num,i| # Para cada elemento del array
            self[i] = block.call(num) #tenemos que coger tambien su indice
        end                         #invocamos al bloque
        self
    end
end

array.iterador!(->(x){x**2})
puts array