require 'securerandom'


class Cuenta

    attr_accessor :usuario
    attr_accessor :numero_cuenta
    attr_accessor :tipo_movimiento
    attr_accessor :monto

    def initialize(usuario,tipo_movimiento)
        @usuario            = usuario
        @tipo_movimiento    = []
        @tipo_movimiento.push(tipo_movimiento)
        @monto              = rand(50000..100000)
        @numero_cuenta      = SecureRandom.hex(3)

    end

    def consultar_saldo
        puts ("#{@usuario}, para tu cuenta #{@numero_cuenta} tu saldo es: #{@monto}")
        
    end
    
    
    def depositar_dinero(abono)
        @monto +=abono
        @tipo_movimiento.push("abono de: #{abono}")  
    end
    
    def retirar_dinero(retiro)
        @monto -=retiro
        @tipo_movimiento.push("retiro de: #{retiro}")

    end

    # def imprimir_estado
        
    # end
    
end