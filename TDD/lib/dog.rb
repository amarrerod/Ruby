

class Dog
    attr_reader :name, :breed, :age, :dad
   
    def initialize(name,breed,age = 0)
        @name,@breed,@age = name, breed,age
    end

    def getDad(dadName)
        @dad = Dog.new(dadName, @breed, @age+5)
        @dad.name
    end
end