# 21. Creá otra función, similar a la anterior, que busque los números naturales múltiplos de N números enteros
# que recibirá como parámetro en un arreglo. Por ejemplo:
# multiplos_de([3, 5], 100)                   # => 315
# multiplos_de([3, 5, 17, 28, 65], 100_000)   # => 92820

def multiplos_de(enteros, tope)
  a = tope.times.select do |num_tope|
    enteros.all? { |num_enteros| num_tope.remainder(num_enteros).zero? }
  end
  a.each.sum
end

p multiplos_de([3, 5], 100)
p multiplos_de([3, 5, 17, 28, 65], 100_000)
