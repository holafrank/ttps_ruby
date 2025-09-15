# 11. Tomando el ejercicio anterior como referencia, ¿en qué situaciones usarías los métodos send y public_send
# definidos en la clase Object? ¿Cuál es la principal diferencia entre esos dos métodos?

# # # # # # # # .send # # # # # # # #
# Según la documentación:
# "Invokes the method identified by symbol, passing it any arguments specified.
# When the method is identified by a string, the string is converted to a symbol.
# BasicObject implements  __send__ , Kernel implements send.
# __send__  is safer than send when obj has the same method name like Socket.
# See also public_send."

# Lo que se hace acá es ejecutar cada método representado con un símbolo que está en el arreglo
# Así, se pasa el símbolo del método a través de meth.
[:upcase, :downcase, :capitalize, :swapcase].map do |meth|
  "TTPS Ruby".send(meth)
end

# # # # # # # # .public_send # # # # # # # #
# Según la documentación:
# "Invokes the method identified by symbol, passing it any arguments specified.
# Unlike send, public_send calls public methods only. When the method is
# identified by a string, the string is converted to a symbol."
[:upcase, :downcase, :capitalize, :swapcase].map do |meth|
  "TTPS Ruby".public_send(meth)
end
# => ["TTPS RUBY", "ttps ruby", "Ttps ruby", "ttps rUBY"]

# .public_send en este caso funciona de igual manera que .send porque todos estos métodos son públicos.
# Fallaría en caso de querer invocar un método que no es público.
# Un ejemplo que muestra la documentación es:
# 1.public_send(:puts, "hello")  # causes NoMethodError
# (irb):4:in `public_send': private method `puts' called for an instance of Integer (NoMethodError)
# :puts no es un método público

# Podríamos decir que .send garantiza que la ejecución no va a fallar, pero por otro lado podría violar el encapsulamiento.
# .public_send nos asegurará que nunca va a ejecutar algún método que tenga visibilidad privada o protegida.
