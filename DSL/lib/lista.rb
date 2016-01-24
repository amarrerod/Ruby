

require 'lib/personas'

Node = Struct.new(:persona,:sg)

class ListaPersonas
    attr_accessor :root
    include Enumerable
    def initialize(raiz)
        raise ArgumentError, 'Argumento Erroneo' if raiz.is_a?(Personas) == false
        @root = Node.new(raiz,nil)
        ##puts self
    end
    def to_s
        aux = @root
            until aux == nil do
                puts("#{aux.persona}")
                    aux = aux.sg
            end
    end
    
    def each
        aux = @root
            until aux == nil do
                yield aux.persona
                aux = aux.sg
            end
    end
end