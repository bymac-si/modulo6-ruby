require 'securerandom'
class Cuenta

    attr_accessor :usuario
    attr_accessor :numero_cuenta
    attr_accessor :tipo_movimiento
    attr_accessor :monto

    def initialize
        @usuario            = usuario
        @tipo_movimiento    = tipo_movimiento
        @monto              = rand(50000..100000)
        @numero_cuenta      = SecureRandom.hex(3)

    end

    def crear_cuenta
    
    end

    def consultar_saldo
        
    end
    
    def depositar
        
    end
    
    def retirar_dinero

    end

    def imprimir_estado
        
    end
    
    end