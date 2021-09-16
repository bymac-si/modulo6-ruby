require_relative 'generador-monstruos'

class Batalla

    attr_reader :monstruo1
    attr_reader :monstruo2

    def initialize
        @monstruo1 = GeneradorMonstruos.generar_pokemon
        @monstruo2 = GeneradorMonstruos.generar_pokemon
    end

    def comenzar        
        puts "BATALLA".center(20, "=")
        puts @monstruo1
        puts @monstruo2
        puts "Presiones [Enter] para iniciar..."
        gets

        puts "INICIO SIMULACIÓN"
        while @monstruo1.vida > 0 and @monstruo2.vida > 0
            # monstruo1 ataca al monstruo2
            sleep(1)
            @monstruo1.atacar(@monstruo2)
            # monstruo2 ataca al monstruo1
            sleep(1)
            @monstruo2.atacar(@monstruo1)
        end

        quien_es_el_ganador?
    end

    def quien_es_el_ganador?
        puts "FIN DE LA SIMULACIÓN"
        puts "Gano..."
        if @monstruo1.vida > 0
            puts @monstruo1
        else
            puts @monstruo2
        end
    end

end