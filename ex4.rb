fruits = ["apple" , "banana" , "orange"]

puts fruits[0]
puts fruits.length
fruits.push("mango")

fruits.each do |fruits|
    puts "I like #{fruits}"
end

book ={"title" => "lonely" , "author" => "youssef" , "year" => "2021"}

puts "the book #{book["title"]} for #{book["author"]} year #{book["year"]}"


num = [2, 3, 9, 5]
 
total = 0
num.each do |n|
    if n % 2 == 0
        puts n
    end
     total += n
end

puts "the total is #{total}"

puts "the largest num is: #{num.max}"