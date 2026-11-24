#task(1,2)
class Book 
    def initialize(title, author, year)
        @title = title
        @author = author
        @year = year
    end

    def describe 
       "book #{@title} for #{@author} since #{@year}"
    end
end

book1 = Book.new("prime", "kamol", "2021")
book2 = Book.new("child", "yoyo", "2017")
book3 = Book.new("prime_2", "joo", "2024")


puts book1.describe
puts book2.describe
puts book3.describe

#task(3,4)
class Person
    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end

    def introduce 
        "ana #{@name} 3andi #{@age}"
    end
    def birthday
        @age += 1
    end
end

person1 = Person.new("kimo", 20)
person2 = Person.new("youssef", 21)

 person1.birthday
 person1.birthday
 person1.birthday
puts person1.introduce
puts person2.introduce

puts person1.name
person1.age = 30
puts person1.age

