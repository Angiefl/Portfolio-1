def caesar_cipher(myText, shift)

a = ("a".."z").to_a

text = myText.chars 

output = ""

for letter in text
    if (letter.ord >=97 && letter.ord <=122) || (letter.ord >=65 && letter.ord <=90)
        idx = a.index(letter.downcase)
        idx = idx > 25 - shift ?  18 + shift - idx :  idx += shift
        output +=  letter.upcase == letter ? a[idx].swapcase : a[idx]
     else
       output += letter 
  end

end
p output
end

caesar_cipher("What a string!", 5)