# 16. Escribí un script en Ruby que le pida a quien lo ejecute que ingrese su nombre por entrada estándar (el teclado),
# y que lo utilice para saludarl@ imprimiendo en pantalla, por ejemplo:
# ruby script.rb
# Por favor, ingresá tu nombre:
# Pepe
# Hola, Pepe

puts('Por favor, ingresá tu nombre:')
nombre = $stdin.gets
puts("Hola, #{nombre}")
