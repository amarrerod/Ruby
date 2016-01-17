
module MiModulo
    #Metodo de clase del modulo MiModulo
    #Se almacena en la clase anonima de MiModulo
    #No puede ser encontrado
    def self.metodo
        "Metodo no alcanzado"
    end
end

class MiClase
    include MiModulo
    def metodoA
        "Metodo de Instancia de Clase --> #{self.class}"
    end
end

p MiClase.new.metodoA
# =>No se va a encontrar
p MiClase.metodo