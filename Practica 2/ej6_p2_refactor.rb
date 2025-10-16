# 6. Modelá con una jerarquía de clases la siguiente situación:
# Los usuarios finales de una aplicación tienen los atributos básicos que permiten identificarlos
# (usuario, clave, email - los que consideres necesarios), y un rol que determina qué operaciones pueden hacer.
# Los roles posibles son: Lector, Redactor, Director y Administrador.
# Cada usuario gestiona Documentos según su rol le permita, acorde a las siguientes reglas:
# • Los Lectores pueden ver cualquier Documento que esté marcado como público.
# • Los Redactores pueden hacer todo lo que los Lectores y además pueden cambiar el contenido de los Documentos
# que ellos crearon.
# • Los Directores pueden ver y cambiar el contenido de cualquier documento
# (público o privado, y creado por cualquier usuario), excepto aquellos que hayan sido borrados.
# • Los Administradores pueden hacer lo mismo que los directores y además pueden borrar Documentos.
# Utilizando el siguiente código para la clase Documento, implementá las clases que consideres necesarias para representar
# a los usuarios y sus roles, completando la funcionalidad aquí presente:

# Documento
class Documento
  attr_accessor :creador, :contenido, :publico, :borrado

  def initialize(usuario, publico = true, contenido = '')
    @creador = usuario
    @publico = publico
    @contenido = contenido
    @borrado = false
  end

  def borrar
    @borrado = true
  end

  def es_creador(usuario)
    @creador.equal?(usuario)
  end

  def modificar(contenido_nuevo)
    @contenido = contenido_nuevo
  end
end

# Usuario
class Usuario

  attr_accessor :usuario

  def initialize(usuario, clave, email, rol)
    @usuario = usuario
    @clave = clave.hash
    @email = email
    @rol = rol
  end

  def crear_documento(contenido)
    Documento.new(self, contenido)
  end

  def ver_documento(doc)
    p doc if @rol.puede_ver?
  end

  def modificar_documento(doc, contenido_nuevo)
    doc.modificar(contenido_nuevo) if @rol.puede_modificar?(doc, self)
  end

  def borrar_documento(doc)
    doc.borrar if @rol.puede_borrar?
  end

end

# Rol
class Rol
  def puede_ver?(doc)
    doc.publico
  end

  def puede_modificar?(doc, usuario)
    false
  end

  def puede_borrar?
    false
  end
end

# Los Lectores pueden ver cualquier Documento que esté marcado como público.
# Pero nada más.
# puede_ver?(doc) hereda de Rol
# puede_modificar?(doc) hereda de Rol
# puede_borrar? hereda de Rol
class Lector < Rol

end

# Los Redactores pueden hacer todo lo que los Lectores
# y además pueden cambiar el contenido de los Documentos que ellos crearon.
# puede_ver?(doc) hereda de Rol
# puede_borrar? hereda de Rol
class Redactor < Rol
  def puede_modificar?(doc, usuario)
    doc.es_creador(usuario)
  end
end

# Los Directores pueden ver y cambiar el contenido de cualquier documento
# (público o privado, y creado por cualquier usuario), excepto aquellos que hayan sido borrados.
# puede_borrar? hereda de Rol
class Director < Rol
  def puede_ver?(doc)
    true
  end

  def puede_modificar?(doc, usuario)
    !doc.borrado
  end
end

# Los Administradores pueden hacer lo mismo que los directores y además pueden borrar Documentos.
class Administrador
  def puede_ver?(doc)
    true
  end

  def puede_modificar?(doc, usuario)
    true
  end

  def puede_borrar?(doc)
    true
  end
end
