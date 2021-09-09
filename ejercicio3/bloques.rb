def prueba_bloque
    puts "Estoy en el método "
    yield
end
prueba_bloque {puts "desde el bloque"}