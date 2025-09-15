# 14. Mejorar la función anterior en una nueva llamada listar_mejorada para que además reciba opcionalmente un parámetro
# llamado pegamento (su valor por defecto debe ser ": ") que sea el que utilice para unir los pares de clave/valor.
# Por ejemplo:
# listar_mejorada({ perros: 2, gatos: 2, peces: 0, aves: 0 }, " -> ")
# => "1. perros -> 2\n2. gatos -> 2\n3. peces -> 0\n4. aves -> 0"

def listar_mejorada(hash, pegamento)
  new_string = ""
  num = 0
  hash.map do |key, value|
    num += 1
    new_string.concat("#{num} #{pegamento} #{key} #{value} \n")
  end
  puts new_string
end

listar_mejorada({ perros: 2, gatos: 2, peces: 0, aves: 0 }, "-->")
