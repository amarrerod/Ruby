

class Miclase
    
    @variable = "MiClase"
    def initialize
        @variable = "Instancia"
    end
    
    def self.metodoDeClase
        puts(@variable)
    end

    def Miclase.metodoDeClase2
        puts(@variable)
    end

    def metodoDeInstancia
        puts(@variable)
    end
    
    class << self
       
        def metodoDeClase3
            puts(@variable)
        end
    end
    
    class << Miclase
        def metodoDeClase4
            puts(@variable)
        end
    end
end

obj = Miclase.new
obj.metodoDeInstancia
Miclase.metodoDeClase
Miclase.metodoDeClase2
Miclase.metodoDeClase3
Miclase.metodoDeClase4
{puts('A')}

