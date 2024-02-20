def encode(string)
    vowels = {'a' => '1', 'e' => '2', 'i' => '3', 'o' => '4', 'u' => '5'}
    encoded_string = ''
    string.each_char do |char|
        if vowels[char]
            encoded_string += vowels[char]
        else
            encoded_string += char
        end
    end
    encoded_string
end

def decode(string)
    vowels = {'1' => 'a', '2' => 'e', '3' => 'i', '4' => 'o', '5' => 'u'}
    decoded_string = ''
    string.each_char do |char|
        if vowels[char]
            decoded_string += vowels[char]
        else
            decoded_string += char
        end
    end
    decoded_string
end


puts encode("abcde")
puts decode(encode("abcde"))
  