# Private
class Foo
    def call_private
        bar
    end

    private

    def bar
        puts 'Private method'
    end
end

foo = Foo.new

foo.call_private

# foo.bar dont work

# Protected
class Foo
    def call_protected(instance)
        instance.bar
    end

    protected

    def bar
        puts 'Protected method'
    end
end

instance_1 = Foo.new
instance_2 = Foo.new

instance_1.call_protected(instance_1)
instance_2.call_protected(instance_2)
instance_1.call_protected(instance_2)
instance_2.call_protected(instance_1)