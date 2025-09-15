# 4. ¿Qué devuelve la siguiente comparación? ¿Por qué?

'TTPS Ruby'.object_id == 'TTPS Ruby'.object_id
# => false

# Son dos instancias de String disitntas
# irb(main):002> 'TTPS Ruby'.object_id
# => 3280
# irb(main):003> 'TTPS Ruby'.object_id
# => 4420
# irb(main):004> 'TTPS Ruby'.object_id
# => 5560
