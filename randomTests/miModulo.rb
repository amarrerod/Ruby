
module MiModulo
    include Enumerable
    attr_accessor :variable
    def initialize(params)
        @variable = params
        puts("Llegamos a MiModulo")
        to_s
    end
    
    def to_s
        "En MiModulo"
    end
    
    def voice(texto)
        raise NotImplementedError,
            "#{self.class} included MiModulo module but didn't define voice!"
    end
    def metodoObjeto
        "MetodoObjeto de MiModulo"
    end
end



class MiClaseMadre
    include MiModulo
    attr_accessor :variable
    def initialize(params)
        @variable = params
        super
    end
    def to_s
        "En MiClaseMadre"
    end
   # def voice(params)
   #     puts("Aquí definimos a Voice")
   #    params
   # end
end

class MiClaseHija < MiClaseMadre

    attr_accessor :variable
    def initialize(params)
        @variable = params
        super
    end
    def to_s
        "En MiClaseHija"
    end
end


puts objeto1 = MiClaseMadre.new("ParamatroMadre")
puts objeto2 = MiClaseHija.new("ParametroHijo")

#Extendemos el modulo directamente en un objeto
cadena = String.new
cadena.extend(MiModulo)
puts(cadena.metodoObjeto)

#Hay algunos metodos que no se pueden implementar directamente desde el modulo
#sino que deben ser definidos en las clases que incluyen esos modulos
#como por ejemplo el metodo each de Enumerable
#puts(objeto1.voice("Hello"))
p MiClaseHija.ancestors
{ puts"Hello World"  }