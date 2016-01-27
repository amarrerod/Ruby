

# In the string "footba foobar" replace both "bar" with "moo"

string = "foobar foobar"
puts(string)
puts string.gsub!('bar', 'moo')


#Replace the last two characters of the string "This is a test" with "Hello".

stringB = "This is a test"
stringB[-1,2] = "Hello"
puts(stringB)


# puts each character of the string "abcxyz"

stringC = "abcxyz"
puts(stringC)
stringC.split("").each do |value|
    puts(value)
end

# puts the numbers in the sentence "the car costs 1000 and the cat costs 50"
"the car costs 1000 and the cat costs 50".scan(/\d+/) {|x| puts x}

# Convert "This is a test" to ["This", "is", "a", "test"] with 2 different techniques.
puts("First way")
puts("This is a test")
r = "This is a test".split(" ")
puts("Array r: #{r}")

x = "This is a test".scan(/\w+/)
puts("Array x: #{x}")


#Split "Short sentence. Another. No more." into an array on the periods.
ary =  "Short sentence. Another. No more".split('.')
puts("Array ary: #{ary}")

# puts each element of the array [1, 2, 3, 4] and concatenate with "x"
[1,2,3,4].each do |x|
    puts "#{x}x"
end

# Add 3 to each element in an array [1, 2, 3, 4] with two different techniques
[1,2,3,4].map! do |value|
        value += 3
        puts("#{value}")
end
[1,2,3,4].collect! do |value|
    value += 3
    puts ("#{value}")
end

# Use a loop to create the following array: [2, 4, 6, 8, 10, 12]
r = 2.step(12,2).to_a
p(r)


r = 5.step(50,5).to_a
suma = r.inject(0) do |acc,value|
        acc += value
    end
puts(suma)

