
#Implementar un DSL que permita la defincion de objetos de la clase Persona


class Personas
    include Comparable
    attr_accessor :id, :name, :age, :dni, :job, :studies, :family, :hijos
    def initialize(id=0, &bloque)
        @id = id
        instance_eval(&bloque)
    end
    
    def nombre(options = {})
        aux = "#{options[:nom]} #{options[:ap]}"  if options[:nom] && options[:ap]
        @name = aux
        @name
    end
    
    def edad(arg)
        @age = arg
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
        @hijos = *args
    end
    
    def <=> (other)
        raise ArgumentError, 'No es de la clase Personas' if other.is_a?(Personas) == false
        return @age <=> other.age
    end
    
    def to_s
        aux = "#{@name} #{@age} años #{@dni} #{@job} #{@hijos[0].size} Hijos"
    end
end

