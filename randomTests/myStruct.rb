

#Al crear la estructura las variables tienen
#visibilidad pública
#si queremos evitarlo tenenmos que hacer un undef
MyStruct = Struct.new(:a,:b)

str = MyStruct.new(5,6)
puts str.a
str.a = str.a * 2
puts str.a

#Abrimos la clase definimos los metodos como privados
class MyStruct
    undef a=,b=,[]
end

str2 = MyStruct.new(5,6)
puts str2.a
str2.a = str2.a * 2
puts str2.a