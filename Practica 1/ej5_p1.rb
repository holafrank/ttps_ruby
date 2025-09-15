# 5. Escribí una función llamada reemplazar que, dado un String que recibe como parámetro, busque y reemplace
# en éste cualquier ocurrencia de "{" por "do\n" y cualquier ocurrencia de "}" por "\nend", de modo que convierta
# los bloques escritos con llaves por bloques multilínea con do y end. Por ejemplo:

def reemplazar(string)
  string.replace(string.to_s.gsub('{', "do\n").gsub('}', "\nend"))
end

s = '3.times { |i| puts i }'
puts s
reemplazar(s)
puts s
