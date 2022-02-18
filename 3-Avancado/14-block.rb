# One line
5.times { puts "Exec the block" }

sum = 0
numbers = [5, 10, 5]
numbers.each {|number| sum += number}
puts sum

# More lines

foo = {2 => 3, 4 => 5}

foo.each do |key, value|
    puts "key = #{key}"
    puts "value = #{value}"
    puts "key * value = #{key * value}"
    puts "---"
end

# yield

def foo2
    yield
    yield
end

foo2 { puts "yield block"}

# Optional block

def foo3
    if block_given?
        yield
    else
        puts 'No block'
    end
end

foo3
foo3 { puts "block" }

# Block as parameter

def foo4(numbers, &block)
    if block_given?
        numbers.each do |key, value|
            block.call(key, value)
        end
    end
end

numbers = {2 => 2, 3 => 3, 4 => 4}

foo4(numbers) do |key, value|
    puts "#{key} * #{value} = #{key * value}"
    puts "#{key} + #{value} = #{key + value}"
    puts '---'
end