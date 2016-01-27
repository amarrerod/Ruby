

=begin

    Write a program that tells whether a given integer is happy. 
    A happy number is found using the following process: 
        Take the sum of the squares of its digits
        and continue iterating this process until it yields 1, or produces an infinite loop.

=end


[0,4,16,20,37,42,58,89,145].each do |x|

    print("#{x}: ")
    seen = {x => true}
    loop do
        sum = x.to_s.split("").inject(0){|tot,d| tot+d.to_i**2}
        
        print "#{sum}"
        if seen[sum]
            puts
            break
        else
            seen[sum] = true
            x         = sum
        end
    end

end
