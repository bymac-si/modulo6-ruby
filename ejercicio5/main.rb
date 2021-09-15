require_relative 'monstruo'

monstruo3 = Monstruo.new
monstruo4 = Monstruo.new

puts "BATALLA".center(20, "=")
puts monstruo3
puts monstruo4
puts "Presiones [Enter] para iniciar..."
gets

puts "INICIO SIMULACIÓN".center(30,"*")
while monstruo3.vida > 0 and monstruo4.vida > 0
    sleep(0.5)
    monstruo3.atacar(monstruo4)
    sleep(0.5)
    monstruo4.atacar(monstruo3)
end

puts "FIN DE LA SIMULACIÓN"
puts "Gano este combate: ... "
if monstruo3.vida > 0
    puts monstruo3
else
    puts monstruo4
end