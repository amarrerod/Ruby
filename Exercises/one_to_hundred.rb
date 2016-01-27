
#=>What is the sum of all the numbers between 0 and 100 that are divisible by both 3 and 5?


r = (1..100).to_a.select do |number|
    number % 3 == 0 && number % 5 == 0
end

sum = r.each.inject(0) do |acc,value|
        acc += value
end

puts(sum)