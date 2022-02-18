fruits = []

# push in order
fruits.push('Apple')
fruits.push('banana')
fruits.push('apricot', 'cherry', 'clementine', 'fig')

# push in position
fruits.insert(0, 'guava', 'melon')

fruits[4] = 'orange'

for fruit in fruits
    print fruit + " "
end
puts ""
print fruits[0..4]
puts ""
print fruits[-1]
puts ""
print fruits [-4..-1]
puts ""

# catch first ou last element
puts fruits.first
puts fruits.last

# count
puts fruits.count

# empty?
foods = []
puts fruits.empty?
puts foods.empty?

# include?
puts fruits.include?('fig')
puts fruits.include?('pineapple')

# Remove itens
puts fruits[3]
fruits.delete_at(3)
puts fruits[3]
puts fruits.last
fruits.pop
puts fruits.last
puts fruits.first
fruits.shift
puts fruits.first

# Hash 
#itens = Hash.new or itens = {}
itens = {teste1: 'tst1', teste2: 'tst2', teste3: 'tst3', teste4: 'tst3'}
itens[:teste4] = 'tst4'
itens[:teste5] = 'tst5'
puts itens
puts itens.values
itens.delete(:teste1)
puts itens.values

# each array
names = ['Armando', 'Pedro', 'Gabriel']

names.each do |name|
    puts name + ' its my name'
end

# each hash
classes = {class1: 'ok', class2: 'fail', class3: 'ok', class4: 'ok'}

classes.each do |key, value|
    puts "#{key} #{value}"
end

# map
numbers = [1,2,3,4,5]

numbersx2 = numbers.map do |n|
    n * 2
end

puts numbers
puts numbersx2

numbers.map! do |n|
    n * 4
end

puts numbers

# select array
numbers2 = [1,2,3,4,5,6]

selection = numbers2.select do |n|
    n >= 4
end

puts selection

#select hash
numbers_hash = {0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three'}

selection_hash = numbers_hash.select do |key, value|
    key > 0
end

puts selection_hash

