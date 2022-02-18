# if
day = 'Holiday'


if day == 'Sunday'
    lunch = 'special'
elsif day == ' Holiday'
    lunch = 'later'
else
    lunch = 'normal'
end

puts "Lunch is #{lunch} today"

# unless
product_status = 'closed'

unless product_status == 'open'
    check_change = 'can'
else
    check_change = 'can not'
end

puts "You #{check_change} change the product"

# if not
product_status = 'closed'

if not product_status == 'open'
    check_change = 'can'
else
    check_change = 'can not'
end

puts "You #{check_change} change the product"

# case
print 'Enter the number of the month you were born: '
month = gets.chomp.to_i

case month
when 1..3
    puts 'You were born at the beginning of the year'
when 9..12
    puts 'You were born at the end of the year'
when 4..6
    puts 'You were born in the first half of the year'
when 7..9
    puts 'You were born in the second half of the year'
else
    puts 'It was not possible to identify'
end

# for
fruits = ['Apple', 'Grape', 'Strawberry', 'Tomato']
count = 0
for fruit in fruits
    puts count
    puts fruit
    count = count + 1
end

# while
x =1 
while x <= 10
    puts x
    x += 1
end

# loop
count = 1
loop do
    puts count
    if count == 10
        break
    end
    count += 1
end

# times
10.times do
    puts 'Hello'
end