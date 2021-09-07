def dividir_entre_digitos(numeros)
resultado = numeros.each do |n|
    n / n.to_s.length
end
return resultado
end

print dividir_entre_digitos([1,2,3,4,5,6,7])