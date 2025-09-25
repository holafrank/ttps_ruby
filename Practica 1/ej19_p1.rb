# 19. Investigá qué métodos provee Ruby para:
# • Obtener la lista de ancestros (superclases) de una clase.
# • Conocer la lista de métodos de una clase.
# • Conocer la lista de métodos de instancia de una clase.
# • Conocer las variables de instancia de una clase.
# • Obtener el valor de una variable de instancia de un objeto (sin utilizar un método generado con attr_reader o similar)
#   accediéndolo desde fuera de éste.
# • Establecer el valor de una variable de instancia de un objeto (sin utilizar un método generado con attr_writer o similar)
#   desde fuera de éste.

class Persona
  def initialize(nombre, ocupacion)
    @nombre = nombre.to_s.capitalize
    @ocupacion = ocupacion.to_s.capitalize
  end

  def decir_hola
    puts "Hola, mi nombre es #{@nombre}"
  end

  def decir_ocupacion
    puts "Soy #{@ocupacion.downcase}."
  end
end

p1 = Persona.new('Sasha', 'ingeniera')
p1.decir_hola
p1.decir_ocupacion
# • Obtener la lista de ancestros (superclases) de una clase.
Persona.superclass
# • Conocer la lista de métodos de una clase.
Persona.methods
# • Conocer la lista de métodos de instancia de una clase.
Persona.instance_methods
# • Conocer las variables de instancia de una clase.
Persona.instance_variables
# • Obtener el valor de una variable de instancia de un objeto (sin utilizar attr_reader) accediéndolo desde fuera de éste.
puts p1.instance_variable_get(:@nombre)
# • Establecer el valor de una variable de instancia de un objeto (sin utilizar attr_writer o) desde fuera de éste.
p1.instance_variable_set(:@ocupacion, 'doctora')
p1.decir_hola
p1.decir_ocupacion
