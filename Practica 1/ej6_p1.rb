# 6. Escribí una función que exprese en palabras la hora que recibe como parámetro, según las siguientes reglas:
# Si el minuto está entre 0 y 10, debe decir “en punto”,
# Si el minuto está entre 11 y 20, debe decir “y cuarto”,
# Si el minuto está entre 21 y 34, debe decir “y media”,
# Si el minuto está entre 35 y 44, debe decir “menos veinticinco” con la hora siguiente,
# Si el minuto está entre 35 y 44, debe decir “menos veinticinco” con la hora siguiente,
# Si el minuto está entre 45 y 55, debe decir “menos cuarto” con la hora siguiente,
# Y si el minuto está entre 56 y 59, debe decir “Casi son las” con la hora siguiente
# Tomá como ejemplos los siguientes casos:
# tiempo_en_palabras(Time.new(2025, 10, 21, 10, 1))
#  => "Son las 10 en punto"
# tiempo_en_palabras(Time.new(2025, 10, 21, 9, 33))
#  => "Son las 9 y media"
# tiempo_en_palabras(Time.new(2025, 10, 21, 8, 45))
#  => "Son las 9 menos cuarto"
# tiempo_en_palabras(Time.new(2025, 10, 21, 6, 58))
#  => "Casi son las 7"
# tiempo_en_palabras(Time.new(2025, 10, 21, 0, 58))
#  => "Casi es las 1"
# Es importante considerar que cuando la hora es 1, la forma correcta de expresarla no es “Son las 1 en punto”,
# sino “Es la 1 en punto”. Esto debe tenerse en cuenta en cada uno de los casos expresados en el enunciado de este ejercicio.
# Tip: resolver utilizando rangos numéricos

def mensaje(t, oracion1, oracion2, oracion3)
  case t.min
  when 0..10
    puts "#{oracion1} #{t.hour} en punto.\n"
  when 11..20
    puts "#{oracion1} #{t.hour} y cuarto.\n"
  when 21..34
    puts "#{oracion1} #{t.hour} y media.\n"
  when 35..44
    puts "#{oracion2} #{t.hour + 1} menos veinticinco.\n"
  when 45..55
    puts "#{oracion2} #{t.hour + 1} menos cuarto.\n"
  when 56..59
    puts "#{oracion3} #{t.hour + 1}.\n"
  end
end


def tiempo_en_palabras(time)
  if !time.min === 0..59
    puts "¿Qué hora pusiste? #{time.min} no entra en el rango.\n"
  end
  case time.hour
  when 1
    mensaje(time, 'Es la', 'Son las', 'Casi son las')
  when 0
    mensaje(time, 'Son las', 'Es la', 'Casi es la')
  else
    mensaje(time, 'Son las', 'Son las', 'Casi son las')
  end
end

tiempo_en_palabras(Time.new(2025, 10, 21, 10, 1))
#  => "Son las 10 en punto"
tiempo_en_palabras(Time.new(2025, 10, 21, 9, 33))
#  => "Son las 9 y media"
tiempo_en_palabras(Time.new(2025, 10, 21, 8, 45))
#  => "Son las 9 menos cuarto"
tiempo_en_palabras(Time.new(2025, 10, 21, 6, 58))
#  => "Casi son las 7"
tiempo_en_palabras(Time.new(2025, 10, 21, 0, 58))
#  => "Casi es las 1"
tiempo_en_palabras(Time.new(2025, 10, 21, 12, 58))
tiempo_en_palabras(Time.new(2025, 10, 21, 1, 58))
tiempo_en_palabras(Time.new(2025, 10, 21, 1, 48))
tiempo_en_palabras(Time.new(2025, 10, 21, 1, 38))
tiempo_en_palabras(Time.new(2025, 10, 21, 1, 28))
tiempo_en_palabras(Time.new(2025, 10, 21, 1, 18))
tiempo_en_palabras(Time.new(2025, 10, 21, 1, 8))
