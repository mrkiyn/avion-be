def unique_in_order(string)

    char_storage = []

    if string.is_a?(String)
        
        string.each_char do |char|
            if char_storage.empty? || char_storage[char_storage.length - 1] != char 
                char_storage.push(char)
            end
        end
        return char_storage

    elsif string.is_a?(Array)
        string.each do |index|
            if char_storage.empty? || char_storage[char_storage.length - 1] != index 
                char_storage.push(index)
            end
        end
        return char_storage
    end

end

puts unique_in_order('AAAABBBCCDAABBB').inspect 
puts unique_in_order('ABBCcAD').inspect           
puts unique_in_order([1, 2, 2, 3, 3]).inspect    