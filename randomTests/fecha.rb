
require 'date'
include Comparable

def ==(fecha1,fecha2)
    
    ((fecha1.year == fecha2.year) && 
    (fecha1.month == fecha2.month)&&
    (fecha1.mday  == fecha2.mday))
        return true
    return false

end

def comparar(fecha1,fecha2)
    
    if(fecha1.year < fecha2.year &&
       fecha1.year != fecha2.year)
        return true
    end
    
    if (fecha1.year == fecha2.year)
        
        if(fecha1.month < fecha2.month)
            return true
        end
    end
end

def compararFechas(fecha1, fecha2)

    if(fecha1.year <= fecha2.year)
        return fecha1
    else
        return fecha2
    end

end

fecha1 = Date.new(201,11,22)
fecha2 = Date.new(2015,2,13)

puts (comparar(fecha1,fecha2))