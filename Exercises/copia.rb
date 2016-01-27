
# Given two arrays, create one array of all the elements that are in first, but not in second


def createArray(arrayA,arrayB)
    array = Array.new
    arrayA.each do |value|
        if ((arrayB.include?(value)) == false)
            array << value
        end
    end
    array
end

arrayA = [1,2,3,4,5]
arrayB = [2,4,5,0,8]

resultado = createArray(arrayA,arrayB)
p(resultado)