def dividir_entre_digitos(numeros_params)
    puts "Mi primer método"
resultado = numeros_params.map do |n|
    n / n.to_s.length
end
return resultado
end

# print dividir_entre_digitos([10,2346,34,432,53,64,7])
# puts

numeros_prueba =[69, 6043, 2407, 6825, 3078, 4605, 8158, 1597, 4341, 6717, 7476, 2868, 1520, 511, 733, 1098, 5068, 7906, 8780, 5873, 8008, 8346, 1992, 1909, 603, 1023, 7051, 2683, 5065, 7378, 3568, 5325, 7856, 5497, 6388, 890, 5559, 4656, 8182, 32, 550, 5256, 4505, 2760, 1479, 8552, 6551, 8412, 5595, 2971, 781, 5667, 8082, 3806, 2463, 6015, 5493, 5182, 2255, 4623, 845, 6099, 7952, 8437, 1291, 3078, 2765, 1893, 6798, 1473, 4672, 5901, 3090, 2934, 6246, 5297, 960, 5683, 31, 2989, 4187, 8809, 788, 3720, 4955, 2859, 1392, 2481, 8132, 752, 1382, 4115, 3504, 2574, 5893, 4337, 661, 2018, 692, 414, 4971, 7069, 2727, 6096, 6265, 3566, 7995, 6226, 4421, 6595, 8903, 3343, 8142, 2780, 7717, 332, 8801, 3409, 7008, 2956, 7297, 3379, 7693, 1359, 6956, 1668, 2679, 4006, 8401, 2888, 3689, 3509, 4558, 8675, 5257, 3698, 4995, 1680, 3820, 3349, 8954, 3824, 3373, 4090, 8874, 8176, 6495, 4976, 5452, 2644, 4603, 1726, 993, 6434, 6633, 3817, 5593, 4719, 2307, 7241, 7142, 1173, 2295, 6423, 362, 1722, 8603, 4457, 1682, 8668, 8545, 4920, 5560, 1872, 1267, 8834, 4273, 5354, 7362, 8313, 5123, 7009, 993, 2474, 8795, 1362, 8313, 6585, 6282, 8531, 1835, 8630, 8748, 3116, 6588, 857, 3335, 561, 2299, 7337]

# print dividir_entre_digitos (numeros_prueba)
# puts

def obtener_cantidad_digitos(numeros_params)
    resultado = numeros_params.map do |n|
        n.to_s.length.to_s
    end
    return resultado
end

# print obtener_cantidad_digitos(numeros_prueba)
# puts

def pares_e_impares(numeros_params)
    resultado = numeros_params.map {|n|
        if n.even?
            "par"
        else
            "impar"
        end
    }
    return resultado
end

def multiplos_tres(numeros_params)
    resultado = numeros_params.select do|n|
             if n%3 ==0
                 "#{n.to_s}"
             end
         end
         return resultado
end

def numeros_comienzan_y_terminan_en_7(numeros_params)
            resultado = numeros_params.select {|n| n.to_s.start_with? "7" or n.to_s.end_with? "7"}
return resultado            
end

# print multiplos_tres(numeros_prueba)
# puts

# print numeros_comienzan_y_terminan_en_7(numeros_prueba)
# puts

def definir_posiciones_10()
posiciones =[]
10.times do
posiciones << rand(0..100)
end
return posiciones
end
# print definir_posiciones_10()
# puts

def definir_posiciones_x(x)
    posiciones =[]
    x.times do
        posiciones << rand(0..10)
    end
    return posiciones
end

# puts "ingrese la cantidad de posiciones del arreglo"
# numero = gets.to_i
# print definir_posiciones_x(numero)
# puts

def definir_posiciones_por_usuario(x,y,z)
    posiciones=[]
    x.times do
    posiciones << rand(y..z)
    end
    return posiciones
end
# puts "ingrese cantidad de posiciones del arreglo"
# numero1=gets.to_i
# puts " ingrese rango inicio del arreglo"
# numero2=gets.to_i
# puts "ingrese rando final del arreglo"
# numero3=gets.to_i

# print definir_posiciones_por_usuario(numero1,numero2,numero3)
# puts

def menu
opcion=0
while opcion != 4
system("clear")
puts " Opciones del menú ".center(30,"*")
puts "1. Banco"
puts "2. Suma Interior"
puts "3. Capicúa"
puts "4. Salir"
puts "ingrese número de operación a realizar"
    opcion = gets.to_i
if opcion == 1
    banco()
elsif 
    opcion ==2
    suma_interior()
elsif opcion ==3
    capicua()
elsif opcion == 4
    puts "Gracias por Preferirnos"
else 
puts "Opción ingresada no existe. Presione enter"
gets
end
end
end

def banco
    system("clear")
    puts "Opción Banco"
    puts "Ingrese Monto a retirar"
    saldo = 120
    monto = gets.to_f
    if monto%5==0 and (monto+0.5) <= saldo
        saldo -= (monto+0.5)
puts "Su nuevo saldo es: #{saldo}"
gets
    else
        puts "Su monto no es múltiplo de 5 o tiene saldo insuficiente"
        puts "Su saldo es: #{saldo}"
        gets
end
end

def suma_interior
    system("clear")
    suma = 0
    puts "Ingrese Número"
    digitos = gets.to_i
    if digitos<0
        digitos *= -1
        digitos.digits.each do |n|
        suma += n   
    end
    suma *= -1
else
    digitos.digits.each do |n|
    suma += n
    end
    end
    puts suma
    puts "Presione Enter para continuar"
    gets
    
end


def capicua
system("clear")
numero=""
revez=""
    puts "Ingrese un Número"
    numero = gets.to_s
    revez = numero.reverse
    if numero.to_i == revez.to_i
        puts "#{revez} ¡¡¡Es Capicúa!!!"
    else
       puts revez
    end
gets
end

menu()