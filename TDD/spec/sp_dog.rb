

require 'lib/dog'


describe Dog do
    before :all do
        @dog = Dog.new("Pluto","Bulldog",5)
        @children = Dog.new("MyChildren", "Bulldog", 5)
        @child = Dog.new("MySecondChildren", "Bulldog", 4)
        @dog.add(@children)
        @dog.add(@child)
        @dad = Dog.new("SomeDog", "Bulldog",10)
    end
    context "#Start" do
       
        it "No es nulo" do
            expect(@dog).not_to eq(nil)
        end
    end
    
    context "#Data" do
        
        it "Must have a name"do
            expect(@dog.name).to eq("Pluto")
        end
        it "Must have a breed"do
            expect(@dog.breed).to eq("Bulldog")
        end
        it "Must have age"do
            expect(@dog.age).to eq(5)
        end
        it "Must have a dad"do
            expect(@dog.getDad("SomeDog")).to eq(@dad.name)
        end
        it "The dad's class must be dog too" do
            expect(@dog.dad.class).to eq(Dog)
        end
    end
    
    context "#LinkedList"do
        it "Must have a linked list for store his son's information" do
            expect(@dog.sons).not_to eq(nil)
        end
        it "Must have included the Enumerable Module" do
            expect(Dog.include?Enumerable).to eq(true)
        end
        it "Must have a method to inserts sons" do
            expect(@dog.respond_to?:add).to eq(true)
        end
    end
    
    context "#Comparable"do
    
        it "Must have included Comparable module"do
            expect(Dog.include?(Comparable)).to eq(true)
        end
        it "Must be able to compare dogs"do
            expect(@dad).to be >(@dog)
        end
    end
    
end