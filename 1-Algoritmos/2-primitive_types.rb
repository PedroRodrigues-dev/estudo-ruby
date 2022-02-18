# Ruby features dynamic typing
int = 10
puts int.class
int = 10.01
puts int.class

boo = true
puts boo.class
boo = false
puts boo.class

string = 'Hello World!'
puts string.class

# Array
array = ['pos-0', 'pos-1', 'pos-2']
puts array.class
puts array[0]

# Symbols allocate equal values ​​to the same location in memory unlike conventional variables
symbol = :ruby_symbol
symbol2 = :ruby_symbol
puts symbol.class
puts symbol2.class
puts symbol.object_id
puts symbol2.object_id
symbol = 'ruby_symbol'
symbol2 = 'ruby_symbol'
puts symbol.class
puts symbol2.class
puts symbol.object_id
puts symbol2.object_id

# Hash
hash1 = {course: 'ruby', language: 'pt-Br', locale: 'onebitcode.com'}
puts hash1[:course]
puts hash1.class