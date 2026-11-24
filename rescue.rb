puts "enter a number:"
num = gets.chomp.to_i

begin
    result = 10 / num
    puts "10 / #{num} = #{result}"
rescue
    puts "you can not divide by zero"
end

puts "program continues..."