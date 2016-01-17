
#Comprobacion de la invalidacion de metodos en Ruby

class ClaseAbuela
    include Comparable
    attr_accessor :myVariable, :mylength
    def initialize(param)
        @myVariable = param
        @mylength = 0
    end
    
    
    #Invalidacion del metodo <=> del modulo Comparable
    def <=>(other)
        raise ArgumentError, 'Not ClaseAbuela Type' if !other.is_a?(ClaseAbuela)
        return @myVariable <=> other.myVariable
    end
    
end

class ClaseMadre < ClaseAbuela
    def initialize(param)
        @mylength = 1
        @myVariable = param
    end
    
    def <=>(other)
        raise ArgumentError, 'Not ClaseAbuela Type' if !other.is_a?(ClaseAbuela)
        return @mylength <=> other.mylength
    end
end

class ClaseHija < ClaseMadre

    def initialize(param)
        super(param)
    end
    
    def <=> (other)
      super
    end
end


abuela = ClaseAbuela.new(5)
madre  = ClaseMadre.new(6)
hija   = ClaseHija.new(2)

#Debería dar false
puts abuela > madre

puts abuela.mylength
puts madre.mylength
#Deberia dar true
puts madre  > abuela
#Deberia dar false
puts hija > madre

