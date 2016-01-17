
require_relative 'metodos_libres'

class ClaseMadre

    CONSTANTE = "ClaseMadre"
    attr_accessor :variable
    def initialize(param)
        @variable = param
    end
    
    def intimo
        "Esto es un metodo privado de ClaseMadre"
    end
    
    def metodoProtegido
        "Esto es un metodo protegido de ClaseMadre"
    end
    
    def toto
        intimo
    end
    
    def putsConstante
        CONSTANTE
    end
    
    def superTest(arg1,arg2)
        "#{arg1}    #{arg2}"
    end
    
    protected :metodoProtegido
    private :intimo
end



class ClaseHija < ClaseMadre
    
    CONSTANTE ="ClaseHija"
    def initialize(param)
        super(param)
    end
    
    def intimo
        "Este es un metodo Publico con nombre intimo"
    end
    
    def superTest(arg1,arg2)
        super #Al no poner parametros coge los parametros con los que se invoco a superTest en ClaseHija
    end
    
    def putsConstante
        CONSTANTE
    end
    
    #La Herencia en Ruby es --> Simple y Publica
    def callProtectedMethod
        metodoProtegido
    end
end


madre = ClaseMadre.new(5)
hija  = ClaseHija.new(5)

puts madre.toto
puts hija.toto
puts hija.superTest('Hola','Adios')
puts madre.putsConstante
puts hija.putsConstante
puts metodoLibre



class ClaseM
    attr_accessor :variable
    def initialize()
        @variable = 0
    end
    
end

class ClaseH < ClaseM
    attr_accessor :variable

    def to_s
   
    "In #{self.class} :  #{@variable}"
    end
end

puts "Nuevo Ejemplo"
objeto = ClaseH.new
puts objeto