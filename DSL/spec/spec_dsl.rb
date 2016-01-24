

require 'lib/personas'
require 'lib/lista'
describe Personas do
    context "#DSL" do
        before :all do
            @persona = Personas.new(1) do
                nombre :ap =>"Apellido", :nom => "Nombre"
                edad 18
                documentacion "123456789F"
                trabajo "Computer Scientist"
                estudios ["E.S.O","BACH","CS"]
                familia :madre =>"Madre",
                        :padre =>"Padre",
                        :mujer =>"Mujer"
                descendencia ["Hijo1", "Hijo2"]
            end
            @hijo = Personas.new(2) do
                nombre :ap =>"Apellido", :nom => "Nombre"
                edad 5
            end
            
        end
            it "Debe existir un metodo nombre" do
               expect(@persona.name).to eq("Nombre Apellido")
            end
            it "Debe tener una edad"do
                expect(@persona.age).to eq(18)
            end
            it "Debe existir un metodo de documentacion"do
                expect(@persona.dni).to eq("123456789F")
            end
            it "Debe tener un trabajo" do
                expect(@persona.job).to eq("Computer Scientist")
            end
            it "Debe tener estudios"do
                expect(@persona.studies).to eq([["E.S.O","BACH","CS"]])
            end
            it "Debe poder tener familiares"do
                expect(@persona.family).to eq({:madre =>"Madre", :padre => "Padre", :mujer => "Mujer"})
            end
            it "Debe poder tener hij@s" do
                expect(@persona.hijos).to eq([["Hijo1", "Hijo2"]])
            end
            it "Debe tener incluido el modulo comparable" do
                expect(Personas.include?(Comparable)).to eq(true)
            end
            it "Se debe poder comparar a dos personas por su edad" do
                expect(@persona).to be >(@hijo)
            end
            it "Debe tener formateada la salida por pantalla" do
                expect(@persona.to_s).to eq("Nombre Apellido 18 años 123456789F Computer Scientist 2 Hijos")
            end
    end
    
    context "#Lista Enlazada de Personas" do
        before :all do
            @persona = Personas.new(2) do
                nombre :ap =>"Apellido", :nom => "Nombre"
                edad 18
                documentacion "123456789F"
                trabajo "Computer Scientist"
                estudios ["E.S.O","BACH","CS"]
                familia :madre =>"Madre",
                        :padre =>"Padre",
                        :mujer =>"Mujer"
                descendencia ["Hijo1", "Hijo2"]
            end
           @listaP = ListaPersonas.new(@persona)
        end
        it "Debe existir la clase ListaPersonas y un objeto lista" do
            expect(@listaP).not_to eq(nil)
        end
        it "Debe existir una raiz de la lista de personas" do
            expect(@listaP.root).not_to eq(nil)
        end
        it "Debe existir el metodo to_s para la lista" do
            expect(@listaP.respond_to?:to_s).to eq(true)
        end
        it "Debe incluir el modulo Enumerable para recorrer la lista"do
            expect(ListaPersonas.include?Enumerable).to eq(true)
        end
    end
end