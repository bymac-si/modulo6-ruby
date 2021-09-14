require_relative 'modulo_impresiones'
require_relative 'modulo_usuarios'

include ModuloImpresiones
include ModuloUsuarios

module Extras
    
    def menu_usuario()
        opcion = 0
        while opcion != 5
            system("clear")
            puts " Menú de Opciones ".center(30,"*")
            puts
            puts "1. Datos Correo"
            puts "2. Datos Gustos"
            puts "3. Datos DC"
            puts "4. Datos Naciones"
            puts "5. Salir"
            opcion=gets.to_i
            n=0
            if opcion == 1
                puts "Ingrese la Cantidad de usuarios a desplegar"
                n = gets.to_i
                arreglo_usuarios_correo_faker = generar_usuarios_con_correo(n)
                imprimir_usuarios_con_correos(arreglo_usuarios_correo_faker)
            elsif 
                opcion ==2
                puts "Ingrese la Cantidad de usuarios a desplegar"
                n = gets.to_i
                arreglo_usuarios_con_gustos = generar_usuarios_con_gustos(n)
                imprimir_usuarios_con_gustos(arreglo_usuarios_con_gustos)
            elsif
                opcion==3
                puts "Ingrese la Cantidad de usuarios a desplegar"
                n = gets.to_i
                arreglo_usuarios_con_dc = generar_usuarios_con_dc(n)
                imprimir_usuarios_con_dc(arreglo_usuarios_con_dc)
            elsif
                opcion==4
                puts "Ingrese la Cantidad de usuarios a desplegar"
                n = gets.to_i
                arreglo_usuarios_con_nacion = generar_usuarios_con_nacion(n)
                imprimir_usuarios_con_nacion(arreglo_usuarios_con_nacion)
            else
                opcion == 5
                puts "Gracias por Preferirnos"
                break
            end
            puts
            puts "Presione ENTER para continuar"
            gets
        end
    end
end