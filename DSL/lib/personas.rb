
#Implementar un DSL que permita la defincion de objetos de la clase Persona


class Personas
    attr_accessor :id, :name, :dni, :job, :studies, :family, :hijos
    def initialize(id=0, &bloque)
        @id = id
        instance_eval(&bloque)
    end
    
    def nombre(options = {})
        aux = "#{options[:nom]} #{options[:ap]}"  if options[:nom] && options[:ap]
        @name = aux
        @name
    end
    
    def documentacion(arg)
        @dni = arg
    end
    
    def trabajo(arg)
        @job = arg
        @job
    end
    def estudios(*arg)
        @studies = arg
    end
    
    def familia(hash = {})
        @family = hash
    end
    
    def descendencia(*args)
        @hijos = args
    end
end