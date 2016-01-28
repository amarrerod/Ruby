

#Resuelto y optimizado
puts 5.step(50,5).inject(0) {|acc,value| acc+=value}
r = (5...50).step(5).inject(0){|acc,value| acc+value}
puts(r)

#Resuelto con un bucle
re = 0
for i in (5...50).step(5)
    re += i
end
puts(re)