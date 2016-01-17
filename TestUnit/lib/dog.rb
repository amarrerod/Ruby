

class Dog
    
    attr_accessor :name, :breed
    def initialize(name,breed)
        @name = name
        @breed = breed
    end
    
    def to_s
        "I'm #{self} and my name's: #{@name} and I'm a #{@breed}"
    end
    
    def talk
        'Woof'
    end
end
