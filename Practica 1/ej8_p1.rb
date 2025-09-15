# 8. Modificá la función anterior para que sólo considere como aparición del segundo String cuando se trate de palabras completas.
# Por ejemplo:
#  contar_palabras("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")
#  => 4

def contar(string, string_occurrence)
  if string.is_a?(String) && string_occurrence.is_a?(String)
    downcase_string = string.downcase
    downcase_string_occurrence = string_occurrence.downcase
    downcase_string.scan(" #{downcase_string_occurrence} ").count
  else
    print 'Sólo Strings!'
  end
end

puts contar('HOLA HOLA Hola Ho', 'ho')
puts contar('HOLA HOLA Hola Ho', 'la')
puts contar('HOLA HOLA Hola Ho', 'e')
puts contar('HOLA HOLA Hola Ho', 'Hola')
contar(1234, 'hola')
