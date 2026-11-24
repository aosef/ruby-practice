#task(1)
def square(n)
    n * n
end 

puts square(4)
puts square(9)

#task(2)
def even?(n)
    n % 2 == 0 
end

puts even?(4)
puts even?(7)


#task(3)
 def sum_array(arr)
    total = 0
    arr.each do |n|
        total += n 
    end
    total
end

puts sum_array([1, 2, 3, 4])
puts sum_array([10, 20])

#task(4)
def grade(score)
    if score >= 90
         "good"
    elsif score >= 60
         "pass"
    else 
         "fail"
    end
end

puts grade(96)
puts grade(66)
puts grade(56)