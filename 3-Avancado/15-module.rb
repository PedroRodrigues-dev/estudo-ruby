module ReverseWorld
    def self.puts text
        print text.reverse.to_s 
    end 
    class Print
        def call text
            print text + "------"
        end 
    end 
end 

module NormalWorld
    def self.puts text
        print text
    end 
end 

ReverseWorld::puts 'Result: '
NormalWorld::puts 'Result: '

print_text = ReverseWorld::Print.new
print_text.call "Result:"

# Module with incude
module Print_base
    def show text
        decoration = '#' * 100
        puts decoration
        puts text
        puts decoration
    end 
end 

module Hello
    include Print_base

    def say_hello
        show 'Hello'
    end

    def say_hi
        show 'Hi'
    end
end

module Bye
    include Print_base

    def say_bye
        show 'Bye'
    end

    def say_good_bye
        show 'Good Bye'
    end
end

class Peoplex
    include Hello
end

class Peopley
    include Bye
end

peoplex = Peoplex.new
peopley = Peopley.new

peoplex.say_hello
peopley.say_bye
