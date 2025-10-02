# 1. Implementá un método que reciba como parámetro un arreglo de números, los ordene y devuelva el resultado.
# Por ejemplo:
# ordenar_arreglo([1, 4, 6, 2, 3, 0, 10])
# => [0, 1, 2, 3, 4, 6, 10]

class Ordenador
  def ordenar_arreglo(array)
    array.sort
  end
end

o = Ordenador.new
p [1, 4, 6, 2, 3, 0, 10]
p o.ordenar_arreglo([1, 4, 6, 2, 3, 0, 10])
