# 5. Implementá el método cuanto_falta? que opcionalmente reciba como parámetro un objeto Time
# y que calcule la cantidad de minutos que faltan para ese momento. Si el parámetro de fecha no es provisto,
# asumí que la consulta es para la medianoche de hoy.
# Por ejemplo:
# cuanto_falta? Time.new(2032, 12, 31, 23, 59, 59)
# => Retorna la cantidad de minutos que faltan para las 23:59:59 del 31/12/2032
# cuanto_falta?
# # => Retorna la cantidad de minutos que faltan para la medianoche de hoy
# De *hoy* o del día en particular que dice el parámetro?

#  (Time.now.in_time_zone - @post.created_at.in_time_zone).to_i --> Will return the difference in seconds.
def minutes_until(time_future)
  min = (time_future - Time.now) / 60
  if min.to_i.positive?
    min.to_i
  else
    0
  end
end

# def some_func(variable = (variable_was_not_passed = true; nil)) ¿¿??
def cuanto_falta?(time_future = nil)
  if time_future.nil?
    minutes_until(Time.new(Time.now.year, Time.now.month, Time.now.day, 24, 0, 0))
  else
    minutes_until(time_future)
  end
end

p cuanto_falta? Time.new(2032, 12, 31, 23, 59, 59)
p cuanto_falta?
p cuanto_falta? Time.new(2025, 10, 2, 11, 0, 0)
p cuanto_falta? Time.new(1999, 10, 2, 11, 0, 0)
