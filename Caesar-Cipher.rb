LOWERALPH = ('a'..'z').to_a
UPPERALPH = ('A'..'Z').to_a

def caesarCipher(s, n)
    array = s.split("")
    newArray = [];
    array.each do |ch|
        newArray.push(convert(ch, n)) 
    end
    return newArray.join()
end

#convert a single character
def convert(ch, n)
    if (LOWERALPH.include?(ch))
        return LOWERALPH[(LOWERALPH.index(ch) + n)%26]
    end
    if (UPPERALPH.include?(ch))
        return UPPERALPH[(UPPERALPH.index(ch) + n)%26]
    end
    
    return ch
end


#test cases
puts convert('w', 3)
puts convert('w', 5)
puts convert('W', 5)

puts caesarCipher("What a string!", 5)