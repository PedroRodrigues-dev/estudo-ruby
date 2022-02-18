class Computer
    def turn_on
        'turn on the computer'
    end

    def shutdown
        'shutdown the computer'
    end
end

computer = Computer.new

puts computer.turn_on

class Animal
    def jump
        puts 'i`m Jumping'
    end

    def sleep
        puts 'im sleeping'
    end
end

class Dog < Animal
    def bark
        puts 'im barking'
    end
end

class Cat < Animal
    def meow
        puts 'im meowing'
    end
end

dog = Dog.new
dog.jump
dog.sleep 
dog.bark
cat = Cat.new
cat.meow

class Instrument
    def write
        puts 'writing'
    end
    def erase
        puts 'erasing'
    end
end

class Pen < Instrument
    def write
        puts 'writing with pen'
        super
    end
end

class Pencin < Instrument
    def write 
        puts 'writing with pencil'
    end
end

pen = Pen.new
pencil = Pencin.new
pen.write
pen.erase
pencil.write
pencil.erase
