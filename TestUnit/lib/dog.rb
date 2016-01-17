
require_relative 'animal'
Node = Struct.new(:dog, :next)

class Node
    def to_s
         "I'm a dog, my name's: #{dog.name}, I'm a #{dog.breed} and I'm #{dog.age} years old"
    end
end

class Dog < Mamifero

    include Enumerable
    include Comparable
    attr_reader :name, :breed, :age, :dad, :sons
   
    def initialize(name,breed,age = 0)
        @name,@breed,@age = name, breed,age
        @sons = Node.new(nil,nil)
    end
    
    def to_s
        "I'm a dog, my name's: #{@name}, I'm a #{@breed} and I'm #{@age} years old"
    end

    def getDad(dadName)
        @dad = Dog.new(dadName, @breed, @age+5)
        @dad.name
    end
    
    def each
        aux = @sons
        until aux.nil?
            yield(aux[:dog])
            aux = aux.next
        end
        @sons
    end
    
    def <=>(other)
        raise ArgumentError, 'No a dog' unless other.is_a?(Dog)
        return @age <=> other.age
    end
    
    def add(name)
        if (name.is_a?(Dog) == false)
            dog = Dog.new(name, @breed, 0)
            aux = Node.new(dog,nil)
            @sons = insertar(aux)
        else
            insertar(name)
        end
    end
    
    private
    
    def insertar(data)
        raise ArgumentError, 'Null data' if data.nil? == true
        nodo = Node.new(data,@sons)
        nodo
    end

end
