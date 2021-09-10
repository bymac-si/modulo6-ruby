require 'faker'

module ModuloUsuario

    def generar_usuarios_con_gustos(n)
        usuarios=[]
        for i in 1..n
            usuarios << { nombre: Faker::Name.name, juego: Faker::Game.title, pelicula: Faker::Movie.title }
        end
        return usuarios
    end

    def generar_usuarios_con_internet(n)
        usuarios=[]
        for i in 1..n
            usuarios << {nombre: Faker::Name.name, email: Faker::Internet.email, password:Faker::Internet.password }
        end
        return usuarios
    end
end