 puts "enter the num"
num = gets.chomp.to_i

(1..10).each do |i|
    puts "#{num} x #{i} = #{num * i}"
end  


sum = 0

(1..100).each do |i|
    sum += i
end

puts sum


(1..30).each do |i|
    if i % 3 == 0 && i % 5 == 0
        puts "FizzBuzz"
    elsif i % 3 == 0 
        puts "wow"
    end
end