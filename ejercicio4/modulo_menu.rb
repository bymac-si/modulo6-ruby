require_relative 'modulo_impresion'
require_relative 'modulo_usuarios'
include ImprimirLista
include ModuloUsuario
module ModuloMenu
    def elige_usuario()
        opcion = 0
        while opcion != 3 
        puts "1. Datos Internet"
        puts "2. Datos Gustos"
        puts "3. Salir"
       opcion.gets.to_i
       if opcion == 1
        generar_lista()
        cantidad_a_iterar
    elsif 
        opcion ==2
        generar_lista_2()
        cantidad_a_iterar
    elsif opcion == 3
        puts "Gracias por Preferirnos"
    end

    def cantidad_a_iterar
        puts "Ingrese la Cantidad de usuarios a desplegar"
        n = gets.to_i

end