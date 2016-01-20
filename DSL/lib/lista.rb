

require 'lib/personas'

Node = Struct.new(:persona,:sg)

class ListaPersonas
    attr_accessor :root
    
    def initialize(raiz)
        raise ArgumentError, 'Argumento Erroneo' if raiz.is_a?(Personas) == false
        @root = Node.new(raiz,nil)
    end
    
end