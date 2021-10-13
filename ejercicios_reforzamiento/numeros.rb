# puts "ingrese número del 0 al 10"
# numero = gets.chomp.to_i

# if numero == 0
#     puts "cero"
# elsif numero == 1
#     puts "uno"
#     elsif numero ==2
#         puts "dos"
#     elsif numero ==3
#         puts "tres"
#     elsif numero ==4
#         puts "cuatro"
#     elsif numero ==5
#         puts "cinco"
#     elsif numero ==6
#         puts "seis"
#     elsif numero ==7
#         puts "siete"
#     elsif numero ==8
#         puts "ocho"
#     elsif numero ==9
#         puts "nueve"
#     elsif numero ==10
#          puts "diez"
#     else puts "fuera de rango"
# end
# nliteral = ["cero", "uno", "dos", "tres", "cuatro", "cinco", "seis", "siete", "ocho", "nueve", "diez"]



# puts "Ingrese un número del 0 al 10"

# numero = gets.chomp.to_i


# if numero <0 or numero >10
#     puts "Ingrese un número del 0 al 10"

# numero = gets.chomp.to_i
# p nliteral [numero]
# else
# p nliteral [numero]
# end

system("clear")

n=-1

while n<0 or n>10 do

    puts "Ingrese numero n para para convertir : "

    n = gets.chomp.to_i

end

numeros = ["cero","uno","dos","tres","cuatro","cinco","seis","siete","ocho","nueve","diez"]

puts " El numerol literal de #{n} es : #{numeros[n]}"