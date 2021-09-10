 require_relative 'modulo_usuarios'
 require_relative 'modulo_impresiones'
 include ImprimirLista
 include ModuloUsuario
# usuarios_main = generar_usuarios_con_gustos(10)
# print usuarios_main

# usuarios_con_correo = generar_usuarios_con_internet(5)
# puts usuarios_con_correo


arreglo_usuarios_correo_faker = generar_usuarios_con_internet(5)
generar_lista(arreglo_usuarios_correo_faker)