# 15. Escribí un método que reciba un argumento y retorne un valor booleano indicando si la cadena recibida como argumento
# es pentavocálica o panvocálica (contiene todas las vocales). El chequeo no debe ser sensible a minúsculas y mayúsculas.

def es_pentavocalica(cadena)
  return /^(?=.*[aá])(?=.*[eé])(?=.*[ií])(?=.*[oó])(?=.*[uú]).*$/i.match?(cadena)
end

p es_pentavocalica('Murciélago')
p es_pentavocalica('Cumparsita')
p es_pentavocalica('Obstetra')
p es_pentavocalica('Educación')
p es_pentavocalica('No quiero nada')
p es_pentavocalica('Salió el sol')
