# 12. Escribí una función longitud que dado un arreglo que contenga varios String cualesquiera, retorne un nuevo arreglo
# donde cada elemento es la longitud del String que se encuentra en la misma posición del arreglo recibido como parámetro.
# Por ejemplo:
# longitud(['TTPS', 'Opción', 'Ruby', 'Cursada 2025'])
# => [4, 6, 4, 12]

def longitud(array)
  new_array = array.collect { |s| s.length }
  p new_array
end

longitud(['TTPS', 'Opción', 'Ruby', 'Cursada 2025'])
