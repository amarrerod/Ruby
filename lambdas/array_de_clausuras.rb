

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


array = Array.new
addClausura(array){puts("Hello World")}
addClausura(array){puts(2+3)}
ejecutarClausura(array)
