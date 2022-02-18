# Strings
print 'type your name: '
name = gets.chomp
print 'type your last name: '
last_name = gets.chomp
puts "Hello #{name} #{last_name}!"

# Integers
print 'First integer: '
int1 = gets.chomp.to_i
print 'Second integer: '
int2 = gets.chomp.to_i
puts "#{int1} + #{int2} = #{int1 + int2}"

