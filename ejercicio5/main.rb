require_relative 'monstruo'

monstruo1 = Monstruo.new
monstruo2 = Monstruo.new


puts monstruo1
puts monstruo2


# monstruo1 ataca al monstruo2
# monstruo1.atacar(monstruo2)

while (monstruo1.vidas > 0 and monstruo2.vidas > 0) do
    monstruo1.atacar(monstruo2)
    monstruo2.atacar(monstruo1)
    puts
    puts "#{monstruo1.nombre} le quedan #{monstruo1.vidas} vidas" 
    
    puts "#{monstruo2.nombre} le quedan #{monstruo2.vidas} vidas" 
    
    end
    if monstruo1.vidas < monstruo2.vidas
        puts "GANO #{monstruo2.nombre}"
    else
        puts "GANO!!!!  #{monstruo1.nombre}"
    end