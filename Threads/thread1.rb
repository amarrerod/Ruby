
#Imprime el hilo principal de ejecución
puts Thread.main
t = []
contador = 0
#Creamos 10 hilos
10.times do |x|
    t[x] = Thread.new do
            sleep(rand(0.1))
            Thread.current["myCount"] = contador
            contador +=1
    end
    puts "#{x} #{t[x]}"
end

t.each do |thread|
    thread.join
    puts thread["myCount"]
end

puts("Contador: #{contador}")