

#Funcionamiento de los bloques

class MiClase
    attr_accessor :miVariable
    def initialize(valor)
        @miVariable = valor
    end
    
    def createBlock(&block)
        block
    end
    
    def createLambdaBitch(arg)
        lambda {|x| puts(@miVariable*arg)}
    end
    
    def compose(lambdaA, lambdaB)
        lambda {|*arg| lambdaA[lambdaB[*arg]]}
    end
end

#Metodo que crea y devuelve un objeto lambda
#el objeto lambda va a ejecutar el codigo que recibe
#como parametro en "stringOfCode"
def miMethod()
    puts("Vamos a crear una lambda")
    return (->(stringOfCode,param)do 
            newString = stringOfCode
            newString << "#{param}"
            puts newString
            # instance_eval(newString)
            end)
end

miObjeto = MiClase.new("Cadena")

def miObjeto.mySingletonMethod
    puts "Here We're going to do something"
    
    if block_given?
        yield 2
    else
        raise ArgumentError, 'No Block Given'
    end
end

lambdaEval = miMethod()
puts("La lambda ha sido creada y ahora la invocamos")
lambdaEval.call("HelloWorld from: ","Tenerife")

miObjeto.mySingletonMethod {puts("")}
#Creamos un objeto de la clase Proc de manera implícita
miBloque = miObjeto.createBlock {|x| puts(x**2)}
miBloque.call(100,5)
#Creamos un lambda a partir del objeto que devuelve la funcion
miLambdaBitch = miObjeto.createLambdaBitch(5)
miLambdaBitch.call(0)
#Componemos un Lambda a partir de dos lambdas
miComposeLambda = miObjeto.compose(miLambdaBitch,miBloque)
miComposeLambda.call(5000000000000)


#Los bloques tambien pueden aceptar bloques como parametros
bloqueA = ->(){p("Soy el bloqueA")}
bloqueB = ->(bloque){
                p("Soy el bloqueB y llamo:");
                bloque.call()
                }
bloqueB.call(bloqueA)



