
class AClass
    def metodo
        'metodo'
    end
end

obj = AClass.new

def obj.metodoS
    'metodoS'
end

class << obj
    def metodoSDos
        'metodoSDos'
    end
end

obj2 = AClass.new

puts(obj.metodo)
puts(obj2.metodo)
puts(obj.metodoS)
puts(obj.metodoSDos)
puts(obj2.metodoSDos)