# Local
def foo
    local = 'Local value'
    puts local
end

foo

# Global

class Bar
    def foo
        $global = 0
        puts $global
    end
end

class Baz
    def qux
        $global += 1
        puts $global
    end
end

bar = Bar.new
baz = Baz.new
bar.foo
baz.qux
baz.qux
puts $global
$global = 12345
puts $global

# Class

class User
    @@user_count = 0
    def add(name)
        puts "User #{name} adicionado"
        @@user_count += 1
        puts @@user_count
    end
end

first_user = User.new
first_user.add('Peter')

second_user = User.new
second_user.add('Jack')

# Instance

class User2
    def add(name)
        @name = name
        puts "User #{name} adicionado"
        hello
    end

    def hello
        puts "Hello #{@name}"
    end
end

user2 = User2.new
user2.add('Jack')

user2.hello

# Atributes

class Dog
    def name
        @name
    end

    def name= name
        @name = name
    end
end

dog = Dog.new
dog.name = 'Jack'
puts dog.name

class Dog2
    attr_accessor :name, :age
end

dog2 = Dog2.new
dog2.age = 1
dog2.name = 'Rex'
puts dog2.age
puts dog2.name
