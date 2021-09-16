require_relative 'monstruo'

class GeneradorMonstruos
    
    def self.generar
        return Monstruo.new
    end

    def self.generar_pokemon
        return Monstruo.new(Faker::Games::Pokemon.name, rand(100..150), rand(10..15))
    end
end