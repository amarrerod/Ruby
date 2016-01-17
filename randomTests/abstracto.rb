
class Clase
    include Comparable
    def mostrarMensaje
        "#{decir} #{algo}"
    end
end


class SegundaClase < Clase
    
    def decir
        "fknsdjfs"
    end
    
    def algo
        "fdsfsd"
    end
end


def show(clase)
    if (clase!=nil)then
            p "#{clase}::es hija de #{clase.superclass}"
        show(clase.superclass)
    end
end


obj = Clase.new
obj2 = SegundaClase.new

puts obj2.mostrarMensaje
puts SegundaClase.include?Comparable
show(Fixnum)


