# lambda
first_lambda = lambda { puts "using lambda" }
first_lambda.call

# abbreviation
first_lambda = -> { puts "using abbreviated lambda" }
first_lambda.call

# lambda with parameters
first_lambda = -> (names){ names.each { |name| puts name}}

names = ['jack', 'peter', 'noa']
first_lambda.call(names)

# multi-line lambda
first_lambda = lambda do |numbers|
    numbers.each do |number|
        puts number * 2
    end
end 

numbers = [1,2,3,4]

first_lambda.call(numbers)

# lambda with method
def foo(first_lambda, second_lambda)
    first_lambda.call
    second_lambda.call
end

first_lambda = -> { puts 'lambda 1' }
second_lambda = -> { puts 'lambda 2' }

foo(first_lambda,second_lambda)