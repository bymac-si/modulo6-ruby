class GestorArchivos
    def self.guardar(batalla)
        if File.exist? ("batallas_guardadas.txt")
            File.open("batallas_guardadas.txt","a") do |archivo|
            archivo.write "#{batalla.monstruo1.nombre} 🆚 #{batalla.monstruo2.nombre} \n"
            archivo.write "Rondas: #{batalla.rondas} \n"
            archivo.write "Ganador fue: #{batalla.ganador} \n\n"
        end
        else
            File.open("batallas_guardadas.txt","w") do |archivo|
                archivo.write "#{batalla.monstruo1.nombre} 🆚 #{batalla.monstruo2.nombre} \n"
                archivo.write "Rondas: #{batalla.rondas} \n"
                archivo.write "Ganador fue: #{batalla.ganador} \n\n"
            end
        end
    end
end