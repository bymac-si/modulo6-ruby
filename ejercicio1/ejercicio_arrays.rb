# Ejercicios palabras totales

# puts "ingrese oracion"
# oracion=gets.chomp
# puts "palabras totales: #{oracion.split(" ").count}"


# Nombre de personas
nombre =""
letra =""
lista =[]

while nombre != "salir"
puts "Escriba el Nombre de una Persona, escriba <<Mostrar>> para ver la lista y <<Salir>> para terminar"
nombre=gets.chomp
letra = nombre.split("")
if nombre == "mostrar"
    lista.each do |n|
        print " #{n} - "
    end
    puts ""
    puts ""
elsif letra[0] == "a" or letra[0] == "e" or letra[0] == "i" or letra[0] == "o" or letra[0] == "u"
    puts "=> agregando: #{nombre.capitalize!}"
    lista.push(nombre)
elsif  nombre != "salir"
    puts "=> agregando: #{nombre.upcase!}"
    lista.push(nombre)
end
end
print "lista Final:"
lista.each do |i|
    print  "#{i} - "
    end
    puts ""
    print "#{lista.count} nombres agregados"