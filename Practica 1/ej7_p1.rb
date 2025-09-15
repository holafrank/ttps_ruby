# 7. Escribí una función llamada contar que reciba como parámetro dos String y que retorne la cantidad de veces que
# aparece el segundo String en el primero, en una búsqueda case-insensitive (sin distinguir mayúsculas o minúsculas).
# Por ejemplo:
#  contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")
#  => 5

def contar(string, string_occurrence)
  if string.is_a?(String) && string_occurrence.is_a?(String)
    downcase_string = string.downcase
    downcase_string_occurrence = string_occurrence.downcase
    downcase_string.scan(downcase_string_occurrence).count
  else
    print 'Sólo Strings!'
  end
end

puts contar('HOLA HOLA Hola Ho', 'ho')
puts contar('HOLA HOLA Hola Ho', 'la')
puts contar('HOLA HOLA Hola Ho', 'e')
contar(1234, 'hola')
