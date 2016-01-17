

array = Array.new
clausura = ->(x) {
        until (array.size == 10)do
                if (((x*x)%5)==0)
                    array << x
                end
                x = x + 1
        end
        array
        }

valores = clausura.call(1)
hOFSuma = ->(suma){ array.each do |x|
                    suma = suma + x
                end
                    suma
}
puts("Valores para realizar la suma: ")
p(valores)
resultado = hOFSuma.call(0)
puts("Resultado de la suma es: #{resultado}")
