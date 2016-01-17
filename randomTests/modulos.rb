
#Imprime la constante PI del modulo Math de Ruby
puts Math::PI

#Preguntamos si la superclase de una clase es Module
puts(Class.superclass == Module)

#Como Class hereda de Module, tambien es un modulo
puts(Class.is_a?(Module))
puts(String.is_a?(Module))

#Los modulos no se pueden instanciar
# =>Math.new
# =>modulos.rb:13:in `<main>': undefined method `new' for Math:Module (NoMethodError)
puts(Math.respond_to?(:new))