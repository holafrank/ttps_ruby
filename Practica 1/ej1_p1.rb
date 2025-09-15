# 1. Investigá y probá en un intérprete de Ruby (irb, por ejemplo) cómo crear objetos de los siguientes
# tipos básicos, tanto mediante el uso de literales como utilizando el constructor new (cuando sea
# posible):
# • Symbol
# • String
# • Array
# • Hash

# • Symbol
# https://docs.ruby-lang.org/en/3.4/Symbol.html
# You may reference a symbol using a colon: :my_symbol.
# You may also create symbols by interpolation and escape sequences described in Escape Sequences with double-quotes:

:simbolo_1
p :simbolo_1
puts :simbolo_1
print :simbolo_1

:simbolo_1.object_id
1.to_s.to_sym
'Soy un simbolo'.to_sym

# • String
# https://docs.ruby-lang.org/en/3.4/String.html
# String object may be created using String::new or as literals.
s1 = String.new
puts s1.insert(0, 'String insertado')
puts s1.length
puts s1.replace('String reemplazado')
puts s1.reverse
puts s1.upcase
puts s1.downcase
puts s1.bytes
puts s1.clear
puts s1.to_sym
s2 = 'Hola!!'
puts s2
verso = <<HEREDOC
  El vino entibia sueños al jadear
  Desde su boca de verdeado dulzor
  Y entre los libros de la buena memoria
  Se queda oyendo como un ciego frente al mar
HEREDOC
puts verso

# • Array
# https://docs.ruby-lang.org/en/3.4/Array.html
# You can create an Array object explicitly with:
# Array literal:
arreglo_literal = [23, 'hola', :hola, [300, 'metarreglo', :signo]]
puts arreglo_literal
# %w or %W string-array Literal:
arreglo_w1 = %w[cosa_1 cosa_2 cosa_3]
arreglo_w2 = %w[1 % * @ | ° ¬ :-)]
puts arreglo_w1
puts arreglo_w2
# %i or %I symbol-array Literal
arreglo_i1 = %i[sim1 sim2 sim3]
arreglo_i2 = %i[1 % * @ | ° ¬ :-)]
print arreglo_i1
print arreglo_i2
# Method KernelArray
kernel_array1 = Array(['a', 'b'])
print kernel_array1
kernel_array2 = Array(1..5)
print kernel_array2
kernel_array3 = Array(key: :value)
print kernel_array3
kernel_array4 = Array(nil)
print kernel_array4
kernel_array5 = Array(1)
print kernel_array5
kernel_array6 = Array({:a => "a", :b => "b"})
print kernel_array6
# Method Array.new
new_array1 = Array.new
new_array2 = Array.new(3)
new_array3 = Array.new(4) {Hash.new}
new_array4 = Array.new(3, true)
print new_array1, new_array2, new_array3, new_array4
# Note that the last example above populates the array with references to the same object.
# This is recommended only in cases where that object is a natively immutable object such as a symbol, a numeric, nil, true, or false.

# Another way to create an array with various objects, using a block;
# this usage is safe for mutable objects such as hashes, strings or other arrays:
blocks_array = Array.new(4) {|i| i.to_s } # => ["0", "1", "2", "3"]
print blocks_array
# Here is a way to create a multi-dimensional array:
multidimensional_array = Array.new(3) {Array.new(3)}
p multidimensional_array
print multidimensional_array

# • Hash
# https://docs.ruby-lang.org/en/3.4/Hash.html
hash1 = Hash.new
print hash1.empty?
hash1.size
hash1.sort
hash1.store(:key1, 'A')
hash1.store(:key2, 'B')
hash1.store(:key3, 'C')
print hash1
hash1.store(:key3, 3)
print hash1
