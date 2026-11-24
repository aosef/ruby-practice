class Animal
    def initialize(name)
        @name = name
    end

    def eat
        "#{@name} is eating"
    end
end

class Dog < Animal
    def bark
        "#{@name} say woof"
    end

    def eat
        super + "(dog food)"
    end 
end

class Cat < Animal
    def meow
        "#{@name} say meow"
    end
end

dog = Dog.new("rex")
cat = Cat.new("logy")

puts dog.eat
puts dog.bark
puts cat.eat
puts cat.meow