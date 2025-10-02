# 4. Escribí un método que dado un número variable de parámetros que pueden ser de cualquier tipo,
# imprima en pantalla la cantidad de caracteres que tiene su representación como String
# y la representación que se utilizó para contarla.
# Por ejemplo:
# longitud(9, Time.now, 'Hola', {un: 'hash'}, :ruby)
# Debe imprimir:
# "9" --> 1
# "2025-09-14 13:22:10 +0000" --> 25
# "Hola" --> 4
# {:un=>"hash"} --> 13
# ruby --> 4
# Nota: Para convertir cada parámetro a string utilizá el método #to_s presente en todos los objetos.

def longitud(*datos)
  datos.each { |d| print "#{d} --> #{d.to_s.length}\n" }
end

longitud(9, Time.now, 'Hola', {un: 'hash'}, :ruby)
