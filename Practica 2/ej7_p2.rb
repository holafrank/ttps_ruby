# 7. Luego de implementar el ejercicio anterior, modificalo para que los usuarios implementen el método #to_s
# que debe retornar el atributo usuario (o email, según hayas decidido utilizar) y el rol que posee.
# Por ejemplo:
# lector.to_s
# => "elhector@example.org (Lector)"
# administrador.to_s
# => "admin@example.org (Administrador)"

# Documento
class Documento
  attr_accessor :creador, :contenido, :publico, :borrado

  def initialize(usuario, publico = true, contenido = '')
    self.creador = usuario
    self.publico = publico
    self.contenido = contenido
    self.borrado = false
  end

  def borrar
    self.borrado = true
  end

  def puede_ser_visto_por?(usuario)
    usuario.puede_ver? self
  end

  def puede_ser_modificado_por?(usuario)
    usuario.puede_modificar? self
  end

  def puede_ser_borrado_por?(usuario)
    usuario.puede_borrar? self
  end

  def es_creador(usuario)
    @creador.equal?(usuario)
  end
end

# Usuario
class Usuario
  attr_accessor :usuario

  def initialize(usuario, clave, email, rol)
    @usuario = usuario
    @clave = clave.hash
    @email = email
    raise 'No se pudo crear rol.' unless rol == :lector || :redactor || :director || :administrador

    @rol = rol
  end

  def crear_documento(contenido)
    Documento.new(self, contenido)
  end

  def ver_documento(doc)
    p doc if puede_ver?
  end

  def modificar_documento(doc, contenido_nuevo)
    doc.contenido = contenido_nuevo if puede_modificar?(doc)
  end

  def borrar_documento(doc)
    doc.borrar if puede_borrar?
  end

  # => "elhector@example.org (Lector)"
  # administrador.to_s
  # => "admin@example.org (Administrador)"
  def to_s
    "#{@email}(#{@rol})@example.org"
  end

  private

  def puede_ver?(doc)
    case @rol
    when :lector || :redactor
      doc.publico
    when :director || :administrador
      true
    else
      false
    end
  end

  def puede_modificar?(doc)
    case @rol
    when :redactor
      doc.es_creador(self)
    when :director
      !doc.borrado
    when :administrador
      true
    else
      false
    end
  end

  def puede_borrar?
    @rol == :administrador
  end
end
