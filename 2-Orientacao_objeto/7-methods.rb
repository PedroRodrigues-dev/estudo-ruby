def talk(first_name, last_name)
    puts "Hi! #{first_name} #{last_name}"
end

def color(color = 'red')
    puts "Color: #{color}"
end

def compare(a, b)
    return 'test'
    a > b
end

first_name = 'Pedro'
last_name = 'Rodrigues'

talk(first_name, last_name)
color
color('blue')

result = compare(1,2)

puts result