
require_relative 'animal'

class Eagle < Animal
    attr_reader :name, :age, :latinName
    def initialize(name = "Bald White Eagle", age = 2, 
                    latin = "Haliaeetus leucocephalus")
        @name,@age,@latinName = name, age,latin
    end
    def moving
        "I move myself by wings"
    end
    
    def to_s
        cadena = " "
        cadena << super.to_s
        cadena << "also I'm a eagle #{self}, my name's #{@name}, and my latin name's: #{latinName}"
        cadena
    end
end
