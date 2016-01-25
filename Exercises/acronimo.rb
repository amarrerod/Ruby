
=begin

    Convert a long phrase to its acronym

    Techies love their TLA (Three Letter Acronyms)!

    Help generate some jargon by writing a program that converts a long name like Portable Network Graphics to its acronym (PNG).


=end


def getString
    puts("Introduzca la cadenda de texto: ")
    cadena = gets.chomp
    cadena
end

clausura = ->(string)do
                
            array = string.split(" ")
            cadena = String.new
            array.each do |value|
                cadena << "#{value[0].upcase}"
            end
            cadena
end

puts clausura.call(getString)