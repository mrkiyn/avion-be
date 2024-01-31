def is_isogram(string)

    string = string.downcase
    char_storage = []

    string.each_char do |char|
        is_exist = char_storage.index(char)
        if (is_exist != nil)
            return false
        else
            char_storage.push(char)
        end
    end
    true
end


puts is_isogram("chek")   