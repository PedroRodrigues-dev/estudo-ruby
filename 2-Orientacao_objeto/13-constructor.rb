class Person
    def initialize(name, age)
        @name = name
        @age = age
    end

    def check
        puts 'Initialized with:'
        puts "Name = #{@name}"
        puts "Age = #{@age}"
    end
end

person = Person.new('Jack', 20)
person.check