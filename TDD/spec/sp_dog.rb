

require 'lib/dog'


describe Dog do
    before :all do
        @dog = Dog.new("Pluto","Bulldog",5)
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
    
end