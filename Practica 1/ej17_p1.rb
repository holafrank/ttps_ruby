# 17. Escribí un nuevo script, que de manera similar al implementado en el punto anterior haga el saludo usando
# un nombre que se provea, pero que en lugar de solicitar que el nombre se ingrese por entrada estándar,
# éste se reciba como argumento del script. Por ejemplo:
# $ ruby script.rb Pepe
# Hola, Pepe
# Tip: investigá cómo se puede trabajar con los argumentos que recibió el script Ruby en su ejecución.

nombre = ''
ARGV.each do |a|
  nombre << "#{a} "
end

puts("Hola, #{nombre}")
