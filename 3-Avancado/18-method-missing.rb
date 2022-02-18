class Fish
    def method_missing(method_name)
        puts "Method #{method_name} do not exists"
    end

    def swim
        puts 'Fish is swimming'
    end 
end

fish = Fish.new
fish.swim
fish.walk