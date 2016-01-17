

#Fichero para pruebas del depurador
require 'pry'

#Ambiente para el depurador de la gema PRY --> Nos proporciona una alternativa a IRBgit
binding.pry


array = Array.new
def addClausura(array,&bloque)
    raise ArgumentError, 'No array' unless array.is_a?(Array)
    array << bloque
end

def ejecutarClausura(array)
    array.each_with_index do |value,i|
        p("------------------------#{i}--------------------")
        value.call
    end
end

addClausura(array){puts("Hello World")}
addClausura(array){puts(2+3)}
ejecutarClausura(array)
