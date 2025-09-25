# 20. Escribí una función que encuentre la suma de todos los números naturales múltiplos de 3 y 5 (ambos)
# que sean menores que un número tope que reciba como parámetro. Por ejemplo:
# multiplos_de_3_y_5(100) # => 315

def multiplos_de_3_y_5(tope)
  tope.times.select { |num| num.remainder(3).zero? && num.remainder(5).zero? }
end

p multiplos_de_3_y_5(100)
