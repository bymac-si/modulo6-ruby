class GestorArchivos
    def self.guardar_saldo(cuenta_nueva)
            File.open("saldo.txt","w") do |archivo|
                archivo.write "#{Time.now.strftime("%d %m %Y")}, Saldo Actual: #{cuenta_nueva.monto}"
                
            end        
    end

    def self.guardar_historico(cuenta_nueva)
        File.open("historial.txt","a") do |archivo|
        archivo.write "El historial es: #{cuenta_nueva.monto}, #{cuenta_nueva.tipo_movimiento} \n"
    end    
end
end

