# 18. Implementá las funciones necesarias para que, dado un color expresado en notación RGB,
# se pueda obtener su representación en las notaciones entera y hexadecimal.
# La notación entera se define como red + green * 256 + blue * 256 * 256
# y la hexadecimal como el resultado de expresar en base 16 el valor de cada color y concatenarlos en orden.
# Por ejemplo:
#  notacion_hexadecimal([0, 128, 255])
#  # => '#0080FF'
#  notacion_entera([0, 128, 255])
#  # => 16744448

# Rojo    #ff0000 	El canal de rojo está al máximo y los otros dos al mínimo
# Verde 	#00ff00 	El canal del verde está al máximo y los otros dos al mínimo
# Azul 	  #0000ff 	El canal del azul está al máximo y los otros dos al mínimo
def notacion_hexadecimal(rgb_array)
  result = '#'
  rgb_array.each do |a|
    result << "#{a.to_s(16)}"
  end
  return result
end

# De hexa (string) a integer con to_i(base) --> "0A".to_i(16) #=>10
# De decimalk a hexa con to_s(16). You can give to_s a base other than 10: 10.to_s(16)  #=> "a"

def notacion_entera(rgb_array)
  return "#{rgb_array[0] + rgb_array[1] * 256 + rgb_array[2] * 256 * 256}"
end

puts notacion_hexadecimal([0, 128, 255])
puts notacion_entera([0, 128, 255])
