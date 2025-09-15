# 9. Dada una cadena cualquiera, y utilizando los métodos que provee la clase String, realizá las siguientes operaciones
# sobre dicha cadena, implementando métodos que funcionen de la siguiente forma:
# string_reverso: retorna el string con los caracteres en orden inverso.
# string_sin_espacio: elimina los espacios en blanco que contenga.
# string_a_arreglo_ascii: retorna un arreglo con cada uno de los caracteres convertidos a su correspondiente valor ASCII.
# string_remplaza_vocal: cambia las vocales por números:
# "a" o "A" por "4",
# "e" o "E" por "3",
# "i" o "I" por "1",
# "o" u "O" por "0",
# y "u" o "U" por "6".

string = 'Soy un String'
puts string

# string_reverso
puts string.reverse

# string_sin_espacio
puts string.delete(' ')

# string_a_arreglo_ascii
string.each_codepoint { |c| p c }
puts('   ')
string.each_char { |c| p c.force_encoding('ascii') }
puts('   ')
string.each_char { |c| p c.ord }

# string_remplaza_vocal
puts string.gsub(/[aA]/, '4').gsub(/[eE]/, '3').gsub(/[iI]/, '1').gsub(/[oO]/, '0').gsub(/[uU]/, '6')
