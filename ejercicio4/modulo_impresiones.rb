require 'faker'

module ImprimirLista
    def generar_lista(arreglo_usuarios)
        conteo_letras = arreglo_usuarios.map{ |usuario| usuario[:nombre].length }
        align_nombre = conteo_letras.max + 5
        
        conteo_letras_correo = arreglo_usuarios.map{ |usuario| usuario[:email].length }
        align_correo = conteo_letras_correo.max + 5

        arreglo_usuarios.each { |usuario|
            
        print usuario[:nombre].ljust(align_nombre),"| ",usuario[:email].ljust(align_correo),"| ",usuario[:password], "\n"
    } 
    end 
end