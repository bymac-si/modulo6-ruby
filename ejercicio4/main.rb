 require_relative 'modulo_usuarios'
 require_relative 'modulo_impresiones'
 require_relative 'modulo_menu'
 include ImprimirLista
 include ModuloUsuario
 include 
# usuarios_main = generar_usuarios_con_gustos(10)
# print usuarios_main

# usuarios_con_correo = generar_usuarios_con_internet(5)
# puts usuarios_con_correo

puts "elija el tipo de usuario a representar y la cantidad a desplegar"



arreglo_usuarios_correo_faker = generar_usuarios_con_internet(n)
generar_lista(arreglo_usuarios_correo_faker)

arreglo_usuarios_con_gusto_faker = generar_usuarios_con_gustos (n)
generar_lista_2(arreglo_usuarios_con_gusto_faker)