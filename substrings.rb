def substrings(text, dictionary)
    text_array = text.downcase.split(" ")
    cont = 0
    output = Hash.new(0)
    dictionary.each do |dic|    
        text_array.each do  |word| 
            cont +=1 if word.include? dic       
        end
        output[dic] = cont if cont > 0
        cont = 0
    end
    return output
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)