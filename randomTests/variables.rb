

#Comprobacion de variables de instancia de clase y de instancia

class MyClass
    include Enumerable
    #Variable de clase solo se puede acceder desde metodos de clase
    @@myClassVariable = 0
    #Variable de instancia de la clase solo se puede
    # acceder a ella desde un metodo de la clase
    @myInstanceVariable = "Esto es una variable de instancia de la clase"
    attr_accessor :myInstanceVariable
    
    CONSTANTE = "ESTO ES UNA CONSTANTE"
    puts("Antes del initialize")
    puts(CONSTANTE)
    def initialize()
        @myInstanceVariable = "Variable de Instancia"
        @@myClassVariable += 1
    end
    
    def to_s
        "Estamos en la clase: #{self.class} que tiene como clase: #{MyClass.class}"
    end
    
    def each
        yield @myInstanceVariable
    end
    
    def self.MyInitializer()
        new
    end
    
    def toto
        CONSTANTE
    end
    
    class << MyClass
        def myMethod
            @myInstanceVariable<<": #{self}"
            puts "#{@myInstanceVariable}"
        end
        
        def numberOfObjects
            @@myClassVariable
        end
    end
    
    private_class_method :new
end

#Definimos una variable de la clase fuera de ella
MyClass::SEGUNDACONSTANTE = "SEGUNDA CONSTANTE"

class MySubClass < MyClass
 #Las variables de instancia no se heredan
 #cada una es diferente
 CONSTANTE="CONSTANTE DE LA CLASE HIJA"
 def initialize()
     super
    @myInstanceVariable = "Estoy en la clase #{self.class} y mi superclase es #{self.class.superclass}"
 end
 def toto
     CONSTANTE
 end
end

class MySubSubClass < MySubClass

    attr_accessor :myVariable
    def initialize()
        super
        @myInstanceVariable = "Hola desde #{self.class}"
    end
    
    def MySubSubClass.myInitializer()
        new 
    end
    private_class_method :new
end



object = MyClass.MyInitializer
object2 = MyClass.MyInitializer
puts object
#Para poder acceder a las variables de instancia de una clase tenemos
#que hacerlo desde un metodo de la clase
puts object.myInstanceVariable #Sale la definida en initialize
MyClass.myMethod
#Accedemos a la variable de clase 
puts MyClass.numberOfObjects
#Accdemos a las constantes
puts MyClass::CONSTANTE
puts MyClass::SEGUNDACONSTANTE


subObject = MySubClass.MyInitializer
puts subObject.myInstanceVariable
puts  MyClass.numberOfObjects
#No se va a poder ejecutar ya que el metodo new es privado para la clase
#subSubObject = MySubSubClass.new
subSubObject =  MySubSubClass.myInitializer
puts subSubObject.myInstanceVariable
puts MyClass.numberOfObjects


#Comprobamos que pertenece a la jerarquia
puts subSubObject.is_a?(MyClass)
#Comprobamos si es una instance de MyClass --> FALSE
puts subSubObject.instance_of?(MyClass)
#Responde al metodo each? --> TRUE
puts subSubObject.respond_to?(:each)


puts subObject.toto