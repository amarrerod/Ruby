
class Animal
    def to_s
        "I'm a Animal "
    end
    
    def moving
    end
end

class Mamifero < Animal
    def eat
        "I eat meat"
    end
    def moving
        "I move myself by feets"
    end
end