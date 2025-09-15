# 2. ¿De qué forma(s) se puede convertir un objeto (cualquiera fuere su tipo o clase) en String?

1.to_s                  # => "1"
'Hola'.to_s             # => "Hola"
['Jueguetes rotos', 'Jijiji', 'Canción para naufragios'].to_s
# "[\"Jueguetes rotos\", \"Jijiji\", \"Canción para naufragios\"]"
var = '!'
%W[Hola #{var}].to_s    # %W devuelve Array => "[\"Hola\", \"!\"]"
%Q("Hola #{var}").to_s  # %Q devuelve String => "\"Hola !\""
%("Hola #{var}").to_s   # % devuelve String => "\"Hola !\""
"Hola #{var}".to_s      # => "Hola !"

# Un objeto
class Objetito
  def initialize(nombre, descripcion)
    @nombre = nombre
    @descripción = descripcion
  end

  def to_s
    "Mi nombre es #{@nombre}, soy un objeto. #{@descripción}"
  end
end

Objetito.new('Pablo', 'Represento a una persona').to_s
