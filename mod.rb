module Printable
    def print_me 
        puts "Iam #{name}"
    end
end

class Person
    include Printable
    attr_reader :name

    def initialize(name)
        @name = name
    end
end

class Dog 
    include Printable
    attr_reader :name

    def initialize(name)
        @name = name
    end
end

Person.new("youssef").print_me
Dog.new("lol").print_me