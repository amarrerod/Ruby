

require 'lib/personas'

describe Personas do
    context "#DSL" do
        before :all do
            @persona = Personas.new(2) do
                nombre :ap =>"Apellido", :nom => "Nombre"
                documentacion "123456789F"
                trabajo "Computer Scientist"
                estudios ["E.S.O","BACH","CS"]
                familia :madre =>"Madre",
                        :padre =>"Padre",
                        :mujer =>"Mujer"
                descendencia ["Hijo1", "Hijo2"]
            end
        end
            it "Debe existir un metodo nombre" do
               expect(@persona.name).to eq("Nombre Apellido")
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
    end
end