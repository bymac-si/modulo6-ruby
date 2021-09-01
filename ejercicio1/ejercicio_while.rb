#texto = ""
#puts "dime algo..."
#while texto != "salir"
#    texto = gets.chomp
#    puts "dijiste: #{texto} 🦜"
#end

# venta = 0
# venta_total = 0
# puts "ingrese las ventas del día"

# while venta != -1
#     venta = gets.chomp.to_i
#     if venta !=-1
#     venta_total = venta_total + venta
#     puts "Ventas Totales:  #{venta_total}"
# end
# end

ventas =[]
index = 0
suma = 0
monto = 0

while monto !=  -1
    puts "ingrese ventas"
    monto = gets.chomp

    if monto.include? "a" or monto.include? "b" or monto.include? "c" or monto.include? "d" or monto.include? "e" or monto.include? "f" or monto.include? "g" or monto.include? "h" or monto.include? "i" or monto.include? "j" or monto.include? "k" or monto.include? "l" or monto.include? "m" or monto.include? "n" or monto.include? "ñ" or monto.include? "o" or monto.include? "p" or monto.include? "q" or monto.include? "r" or monto.include? "s" or monto.include? "t" or monto.include? "u" or monto.include? "v" or monto.include? "w" or monto.include? "x" or monto.include? "y" or monto.include? "z"
        puts "#{monto} no es un número"
    else 
        monto = monto.to_i
        if monto != -1
            ventas[index] = monto
            suma += ventas[index]
            index += 1
        end
    end
end
puts "las ventas del dia son #{ventas}"
puts "la venta total del dia es #{suma}"