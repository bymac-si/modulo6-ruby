require 'faker'

class Monstruo

    attr_accessor :nombre
    attr_accessor :vidas
    attr_accessor :ataque

    def initialize(nombre = Faker::Games::StreetFighter.character, vidas = rand(100..150), ataque = rand(10..15))
        @nombre = nombre
        @vidas   = vidas
        @ataque = ataque
    end


    def atacar(monstruo_enemigo)
        monstruo_enemigo.vidas -= @ataque
    end

    def to_s
        "#{@nombre} | #{@vidas} | #{@ataque}"
    end
end