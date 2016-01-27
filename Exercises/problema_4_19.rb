

#Resuelto y optimizado
re = 5.step(50,5).to_a.inject(0) {|acc,value| acc+=value}
puts(re)
