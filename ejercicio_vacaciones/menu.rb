require_relative 'cuenta'
require_relative 'gestor_archivos'

cuenta_nueva = Cuenta.new("Marcos","Saldo Inicial")
cuenta_nueva.consultar_saldo

puts "Ingrese Abono: "
abono = gets.to_i
cuenta_nueva.depositar_dinero(abono)
cuenta_nueva.consultar_saldo

puts "Ingrese un Giro"
retiro = gets.to_i
cuenta_nueva.retirar_dinero(retiro)
cuenta_nueva.consultar_saldo

GestorArchivos.guardar_saldo(cuenta_nueva)
GestorArchivos.guardar_historico(cuenta_nueva)
