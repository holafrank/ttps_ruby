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
end

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
class Usuario

  def initialize(usuario, clave, email)
    @usuario = usuario
    @clave = clave.hash
    @email = email
  end
end
