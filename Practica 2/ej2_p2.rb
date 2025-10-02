# 2. Modificá el método anterior para que en lugar de recibir un arreglo como único parámetro,
# reciba todos los números como parámetros separados. Por ejemplo:
# ordenar(1, 4, 6, 2, 3, 5, 0, 10, 9)
# => [0, 1, 2, 3, 4, 5, 6, 9, 10]

class Ordenador
  def ordenar_arreglo(array)
    array.sort
  end

  def ordenar_numeros(*numbers)
    numbers.to_a.sort
  end
end

o = Ordenador.new
p [1, 4, 6, 2, 3, 0, 10]
p o.ordenar_arreglo([1, 4, 6, 2, 3, 0, 10])
p o.ordenar_numeros(1, 4, 6, 2, 3, 0, 10)
