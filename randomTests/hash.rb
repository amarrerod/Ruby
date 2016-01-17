

#isbn = Hash.new

isbn = { "isbn-10" => " 1937785491", "isbn-13" => " 978-1937785499" }

puts isbn["isbn-10"]


   nombres = Array.new
        nombres = %w{ Autor1 Autor2 }
     #   p nombres

#Bucle para imprimir los elementos del array formateado
nombres.each_with_index do |nombre, i|
   
    print (nombre)
    if (i == ( nombres.length-1))
        puts (".")
    else
        print(", ")
    end
end


#Bucle para imprimir el hash formateado
isbn.each { |i, valor|
    puts ("#{i} is #{valor}") }




